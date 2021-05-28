package com.bonggeuda.sugbag.book.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.bonggeuda.sugbag.common.paging.PageNation;
import com.bonggeuda.sugbag.model.dto.AttachmentDTO;
import com.bonggeuda.sugbag.model.dto.MemberDTO;
import com.bonggeuda.sugbag.model.dto.PageInfoDTO;
import com.bonggeuda.sugbag.model.dto.ReviewDTO;
import com.bonggeuda.sugbag.service.BookService;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class ReviewServlet
 */
@WebServlet("/accomoSelect/review")
public class ReviewSelectServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberDTO member = (MemberDTO)request.getSession().getAttribute("member");
		
		int userNo = member.getUserNo();
        BookService bsvc = new BookService();
		//1. 베스트 리뷰 조회
		int accomoNo = Integer.parseInt(request.getParameter("no"));
		List<ReviewDTO> bestReview =  bsvc.selectBestReview(accomoNo);
		
		//2. 리뷰의 UP, DOWN을 COUNT 한 값 가져오기(0:업, 1 :다운)
		List<Map<Integer,Integer>> upDownCnt = bsvc.selectUpDownCnt(accomoNo);
		
		//3.리뷰 사진 조회
		int categoryNo = 5;
		Map<Integer,String> reviewPicture = bsvc.selectReviewPicture(accomoNo,categoryNo);
		
		//4.리뷰업다운상태
		
		Map<Integer, String> upDownStatus = bsvc.selectReviewUpDownStatus(userNo);
		
		//베스트리뷰에 좋아요 싫어요 업다운상태 사진 추가
		for(int i = 0; i < bestReview.size(); i++) {
			int no = bestReview.get(i).getReviewNo();
			//좋아요추가
			if(upDownCnt.get(0).get(no) != null) {
				bestReview.get(i).setUpCnt(upDownCnt.get(0).get(no));
			}
			//싫어요추가
			if(upDownCnt.get(1).get(no) != null) {
				bestReview.get(i).setDownCnt(upDownCnt.get(1).get(no));
			}
			//사진추가
			if(reviewPicture.get(no) != null) {
				AttachmentDTO attach = new AttachmentDTO();
				attach.setThumbnailPath(reviewPicture.get(no));
				bestReview.get(i).setAttachment(attach);
			}
			
			//업다운상태 추가
			if(upDownStatus.get(no) != null) {
				bestReview.get(i).setUpdownStatus(upDownStatus.get(no));
			}
		}
		
		//5.페이징처리
		
//		String currentPage = request.getParameter("currentPage");
//		
//		int pageNo = 1;
//		
//		if(currentPage != null && !"".equals(currentPage)) {
//			pageNo = Integer.parseInt(currentPage);
//		}
//		
//		int limit = 3;
//		int buttonAmount = 5;
//		int total = bsvc.selectAccomoReviewCount(bestReview, accomoNo);
//		PageInfoDTO pageInfo = PageNation.getPageInfo(pageNo, total, limit, buttonAmount);
//		

		
		//6.베스트리뷰를 제외한 전체 리뷰 조회
		List<ReviewDTO> reviewList = bsvc.selectAllReviewList(bestReview, accomoNo);
		
		for(int i = 0; i < reviewList.size(); i++) {
			int no = reviewList.get(i).getReviewNo();
			//좋아요추가
			if(upDownCnt.get(0).get(no) != null) {
				reviewList.get(i).setUpCnt(upDownCnt.get(0).get(no));
			}
			//싫어요추가
			if(upDownCnt.get(1).get(no) != null) {
				reviewList.get(i).setDownCnt(upDownCnt.get(1).get(no));
			}
			//사진추가
			if(reviewPicture.get(no) != null) {
				AttachmentDTO attach = new AttachmentDTO();
				attach.setThumbnailPath(reviewPicture.get(no));
				reviewList.get(i).setAttachment(attach);
			}
			
			//업다운상태추가
			if(upDownStatus.get(no) != null) {
				reviewList.get(i).setUpdownStatus(upDownStatus.get(no));
			}
		}
		
		String path="";
		//리뷰리스트, 베스트리뷰,
		if(bestReview !=null || reviewList!=null) {
			path="/WEB-INF/views/guest/accomoInfo/book.jsp";
			request.setAttribute("bestReview", bestReview);
			request.setAttribute("reviewList", reviewList);
//			request.setAttribute("pageInfo", pageInfo);
			System.out.println();
			
		} else {
			System.out.println("응 돌아가");
		}
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getParameter("status");
		request.getParameter("reviewNo");
		MemberDTO member = (MemberDTO)request.getSession().getAttribute("member");
		int userNo = member.getUserNo();
		
		ReviewDTO review = new ReviewDTO();
		review.setUserNo(userNo);
		review.setUpdownStatus(request.getParameter("status"));
		review.setReviewNo(Integer.parseInt(request.getParameter("reviewNo")));
		//기존이력번호
		BookService bsvc = new BookService();
		int historyNo = bsvc.selectExistingReview(review);
		
		int result = 0;
		if(historyNo > 0) {
			review.setHistoryNo(historyNo);
			result = bsvc.updateReviewHistory(review);
		} else {
			result = bsvc.insertReviewHistory(review);
		}
		
		//리뷰업다운 값 조회
		int[] upDown = new int[2];
		upDown = bsvc.selectChangeUpDown(review);
		
		JSONObject json = new JSONObject();
		json.put("up", upDown[0]);
		json.put("down", upDown[1]);
		
		response.setContentType("application/json; charset=UTF-8;");
		
		PrintWriter out = response.getWriter();
        out.print(json);
        
        out.flush();
        out.close();
	}
}
