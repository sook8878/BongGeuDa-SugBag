package com.bonggeuda.sugbag.owner.regist.service;

import static com.bonggeuda.sugbag.jdbc.JDBCTemplate.close;
import static com.bonggeuda.sugbag.jdbc.JDBCTemplate.commit;
import static com.bonggeuda.sugbag.jdbc.JDBCTemplate.getConnection;
import static com.bonggeuda.sugbag.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import com.bonggeuda.sugbag.model.dto.RoomDTO;
import com.bonggeuda.sugbag.owner.regist.dao.AccomoDAO;
import com.bonggeuda.sugbag.owner.regist.dao.RoomDAO;

public class RoomService {

	/*RoomDAO와 연결할 필드 변수*/
	private RoomDAO roomDAO = new RoomDAO();
	
	public int InsertRoomServlet(ArrayList<RoomDTO> roomList) {
		
		System.out.println("리스트넘어오나? : " + roomList);
		
		Connection con = getConnection();

		/*Connection과 함께 정보를 전달하여 조회.*/
		int inserRoom = roomDAO.InsertRoom(con, roomList);
		
		if(inserRoom > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		
		return inserRoom;
	}

}