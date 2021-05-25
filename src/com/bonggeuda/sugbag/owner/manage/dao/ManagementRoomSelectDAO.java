package com.bonggeuda.sugbag.owner.manage.dao;



import static com.bonggeuda.sugbag.jdbc.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.bonggeuda.sugbag.common.config.ConfigLocation;
import com.bonggeuda.sugbag.model.dto.AccomoDTO;
import com.bonggeuda.sugbag.model.dto.RmAccomoInfoDTO;

public class ManagementRoomSelectDAO {
	
		private Properties prop = new Properties();

	
	public ManagementRoomSelectDAO() {
		
		try {
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION+"/owner/roomManagement/roomManagement-mapper.xml"));
		} catch(IOException e) {
			e.printStackTrace();
		}
	}

	public int selectTotalRoom(Connection con, int ownerNo) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		int totalCount = 0;
		
		String query = prop.getProperty("selectRoomCount");
		System.out.println(query);
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setInt(1, ownerNo);		
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				totalCount = rset.getInt("COUNT(*)");
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		System.out.println("DAO 토탈 카운트1 : " + totalCount);
		
		return totalCount;

		
	}

	public List<RmAccomoInfoDTO> selectAccomoListDAO(Connection con, int ownerNo) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		List<RmAccomoInfoDTO> selectAccomoList = new ArrayList<RmAccomoInfoDTO>();
		RmAccomoInfoDTO accomoDTO = new RmAccomoInfoDTO();
		
		String query = prop.getProperty("selectAccomoList");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setInt(1, ownerNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				accomoDTO = new RmAccomoInfoDTO();
				
				accomoDTO.setAccomoName(rset.getString("RM_ACCOMO_NAME"));
				accomoDTO.setAccomoType(rset.getString("RM_ACCOMO_TYPE"));
				accomoDTO.setApprovalYN(rset.getString("APPROVAL_YN"));
				accomoDTO.setRmType(rset.getString("RM_TYPE"));
				accomoDTO.setEnAccomoNO(rset.getInt("EN_ACCOMO_NO"));
				accomoDTO.setRmAccomoNo(rset.getInt("RM_ACCOMO_NO"));
				accomoDTO.setThumbNailPath(rset.getString("THUMBNAIL_PATH"));
				accomoDTO.setApprovalStatus(rset.getString("APPROVE_STATUS"));

				accomoDTO.setAccomoNo(rset.getInt("ACCOMO_NO"));
				
				selectAccomoList.add(accomoDTO);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		
		
		return selectAccomoList;
	}

	public String selectRmImagePathDAO(Connection con, int ownerNo) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectRmAccomoImagePath");
		
		String selectRmImagePathDAO = "";
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setInt(1,ownerNo );
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				selectRmImagePathDAO = rset.getString("THUMBNAIL_PATH");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		return selectRmImagePathDAO;
	}



}
