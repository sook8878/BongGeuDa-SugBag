package com.bonggeuda.sugbag.adminNotice.service;

import static com.bonggeuda.sugbag.jdbc.JDBCTemplate.close;
import static com.bonggeuda.sugbag.jdbc.JDBCTemplate.commit;
import static com.bonggeuda.sugbag.jdbc.JDBCTemplate.getConnection;
import static com.bonggeuda.sugbag.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import com.bonggeuda.sugbag.adminNotice.dao.AdminNoticeDAO;
import com.bonggeuda.sugbag.adminNotice.dto.AdminNoticeDTO;
import com.bonggeuda.sugbag.model.dto.PageInfoDTO;



public class AdminNoticeService {

	private final AdminNoticeDAO adminNoticeDAO;
	
	public AdminNoticeService() {
		adminNoticeDAO = new AdminNoticeDAO();
	}

	public static List<AdminNoticeDTO> selectNoticeList(PageInfoDTO pageInfo) {
		
		Connection con = getConnection();
		
		List<AdminNoticeDTO> noitceList = AdminNoticeDAO.selectNoitceList(con, pageInfo);
		
		close(con);
		
		return noitceList;
	}

	public int selectNoticeTotalCount() {
		
		Connection con = getConnection();
		
		int totalCount = AdminNoticeDAO.selectNoticeTotalCount(con);
		
		close(con);
		
		return totalCount;
	}

	public AdminNoticeDTO selectNoticeDetail(String noticeNo) {

		Connection con = getConnection();
		
		AdminNoticeDTO noticeInfo = AdminNoticeDAO.selectNoticeDetail(con, noticeNo);
		
		close(con);
		
		return noticeInfo;
	}

	public int insertNotice(AdminNoticeDTO dto) {

		Connection con = getConnection();
		
		int insertNotice = AdminNoticeDAO.insertNotice (con, dto);
		
		if(insertNotice  > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		
		return insertNotice ;
	}


	public int updateNoitce(AdminNoticeDTO updateDTO, int noticeNo) {
		
		System.out.println("3번째" + noticeNo);
		
		Connection con = getConnection();
		
		int noticeInfo = AdminNoticeDAO.updateNoitce (con, updateDTO, noticeNo);
		
		if(noticeInfo  > 0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		
		return noticeInfo ;
	}

}