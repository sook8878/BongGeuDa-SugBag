package com.bonggeuda.sugbag.adminQnAReport.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bonggeuda.sugbag.adminQnAReport.dto.ReportDTO;
import com.bonggeuda.sugbag.adminQnAReport.service.AdminReportService;


/**
 * Servlet implementation class ReportDetailServlet
 */
@WebServlet("/report/detail")
public class ReportDetailServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		AdminReportService adminReportService = new AdminReportService();
		
		ReportDTO reportInfo = adminReportService.selectReportDetail(Integer.parseInt(request.getParameter("reportNo")));
		ReportDTO reportThumnailInfo = adminReportService.selectReportThumnail(Integer.parseInt(request.getParameter("reportNo"))); //썸네일 가져오는 코드
		

		System.out.println("신고접수번호~~~~~"+ request.getParameter("reportNo"));


		
		String path = "";
		
		if(reportInfo != null) {
			path = "/WEB-INF/views/admin/report/reportDetail.jsp";
			request.setAttribute("reportInfo", reportInfo);
			request.setAttribute("reportThumnailInfo", reportThumnailInfo);
			request.setAttribute("reportNo", request.getParameter("reportNo"));
		} 
		System.out.println("사진 경로 확인: " + reportThumnailInfo);

		request.getRequestDispatcher(path).forward(request, response);
	}

}
