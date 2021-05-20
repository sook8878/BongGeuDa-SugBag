package com.bonggeuda.sugbag.model.dao;

import static com.bonggeuda.sugbag.jdbc.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import com.bonggeuda.sugbag.common.config.ConfigLocation;
import com.bonggeuda.sugbag.model.dto.AccomoInfoDTO;
import com.bonggeuda.sugbag.model.dto.AttachmentDTO;

public class BookDAO {

	private final Properties prop;
	public BookDAO() {
		prop = new Properties();
		
		try {
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION+"/guest/book/book-mapper.xml"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 숙소리스트 검색
	 * @param con 
	 * @param type 숙소타입(호텔,펜션,게스트하우스)
	 * @return 숙소리스트
	 */
	public List<AccomoInfoDTO> selectAccomoList(Connection con, String type,int category) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		List<AccomoInfoDTO> accomoList = null;
		
		String query = prop.getProperty("selectAccomoInfo");
		try {
			
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, type);
			pstmt.setInt(2, category);
			
			rset = pstmt.executeQuery();
			
			accomoList = new ArrayList<>();
			
			while(rset.next()) {
				AccomoInfoDTO accomoInfo = new AccomoInfoDTO();
				AttachmentDTO attachment = new AttachmentDTO();
				
				accomoInfo.setAccomoNo(rset.getInt("ACCOMO_NO"));
				accomoInfo.setOwnerNo(rset.getInt("OWNER_NO"));
				accomoInfo.setAccomoName(rset.getString("ACCOMO_NAME"));
				accomoInfo.setCeoName(rset.getString("CEO_NAME"));
				accomoInfo.setType(rset.getString("ACCOMO_TYPE"));
				accomoInfo.setResgstrationNo(rset.getString("REGISTRATION_NO"));
				accomoInfo.setAddress(rset.getString("ACCOMO_ADDRESS"));
				accomoInfo.setEmail(rset.getString("ACCOMO_EMAIL"));
				accomoInfo.setHomepage(rset.getString("ACCOMO_HOMEPAGE"));
				accomoInfo.setFacility(rset.getString("ACCOMO_FACILITY"));
				accomoInfo.setPath(rset.getString("ACCOMO_PATH"));
				accomoInfo.setNear(rset.getString("ACCOMO_NEAR"));
				accomoInfo.setRule(rset.getString("ACCOMO_RULE"));
				accomoInfo.setParking(rset.getString("ACCOMO_PARKING"));
				accomoInfo.setCheckIn(rset.getString("CHECK_IN"));
				accomoInfo.setCheckOut(rset.getString("CHECK_OUT"));
				accomoInfo.setPeakStart(rset.getDate("PEAK_DATE_START"));
				accomoInfo.setPeakEnd(rset.getDate("PEAK_DATE_END"));
				attachment.setThumbnailPath(rset.getString("THUMBNAIL_PATH"));
				accomoInfo.setAttachment(attachment);
				accomoList.add(accomoInfo);
			}
				
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
			close(rset);
			close(pstmt);
		}
		return accomoList;
	}
	/**
	 * 숙소의 리뷰 평점과 최저가 조회
	 * @param con
	 * @param type 숙소타입
	 * @return 숙소리뷰, 평점
	 */
	public List<Map> selectPriceNScore(Connection con, String type) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		List<Map> priceNScore = null;
		
		Map<Integer, Integer> minPrice = null;
		Map<Integer, Double> reviewScore = null;
		
		// 최저가 구하기		
		String query = prop.getProperty("selectMinPrice");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, type);
			
			rset = pstmt.executeQuery();

			priceNScore = new ArrayList<>();
			minPrice = new HashMap<>();
			while(rset.next()) {
				minPrice.put(rset.getInt("ACCOMO_NO"), rset.getInt("최저가"));
			}
			priceNScore.add(minPrice);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//숙소 평점 구하기
		query = prop.getProperty("selectReviewScore");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, type);
			
			rset = pstmt.executeQuery();
			
			reviewScore = new HashMap<>();
			
			while(rset.next()) {
				reviewScore.put(rset.getInt("ACCOMO_NO"), rset.getDouble("평점"));
			}
			priceNScore.add(reviewScore);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return priceNScore;
	}

	public List<Map> selectMinPrice(Connection con, String type) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectMinPrice");
		
		List<Map> accomoPriceNStar = null;
		
		Map<Integer, Integer> minPrice = null;
		try {
			accomoPriceNStar = new ArrayList<>();
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, type);
			
			rset = pstmt.executeQuery();
			
			minPrice = new HashMap<>();
			while(rset.next()) {
				minPrice.put(rset.getInt("ACCOMO_NO"), rset.getInt("최저가"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		accomoPriceNStar.add(minPrice);
		
		Map<Integer, Double> reviewScore = null;
		
		query = prop.getProperty("selectReviewScore");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, type);
			
			rset = pstmt.executeQuery();
			
			reviewScore = new HashMap<>();
			
			while(rset.next()) {
				reviewScore.put(rset.getInt("ACCOMO_NO"), rset.getDouble("평점"));
			}
			accomoPriceNStar.add(reviewScore);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return accomoPriceNStar;
	}

	/**
	 * 숙소 1개 정보 select
	 * @param con
	 * @param accomoNo 숙소번호
	 * @return 숙소정보
	 */
	public AccomoInfoDTO selectAccomoInfo(Connection con, int accomoNo, int categoryType) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		AccomoInfoDTO accomo = null;
		
		String query = prop.getProperty("selectOneAccomo");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, accomoNo);
			pstmt.setInt(2, categoryType);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				accomo = new AccomoInfoDTO();
				
				AttachmentDTO attachment = new AttachmentDTO();
				accomo.setAccomoNo(rset.getInt("ACCOMO_NO"));
				accomo.setOwnerNo(rset.getInt("OWNER_NO"));
				accomo.setAccomoName(rset.getString("ACCOMO_NAME"));
				accomo.setCeoName(rset.getString("CEO_NAME"));
				accomo.setType(rset.getString("ACCOMO_TYPE"));
				accomo.setResgstrationNo(rset.getString("REGISTRATION_NO"));
				accomo.setAddress(rset.getString("ACCOMO_ADDRESS"));
				accomo.setEmail(rset.getString("ACCOMO_EMAIL"));
				accomo.setHomepage(rset.getString("ACCOMO_HOMEPAGE"));
				accomo.setFacility(rset.getString("ACCOMO_FACILITY"));
				accomo.setPath(rset.getString("ACCOMO_PATH"));
				accomo.setNear(rset.getString("ACCOMO_NEAR"));
				accomo.setRule(rset.getString("ACCOMO_RULE"));
				accomo.setParking(rset.getString("ACCOMO_PARKING"));
				accomo.setCheckIn(rset.getString("CHECK_IN"));
				accomo.setCheckOut(rset.getString("CHECK_OUT"));
				accomo.setPeakStart(rset.getDate("PEAK_DATE_START"));
				accomo.setPeakEnd(rset.getDate("PEAK_DATE_END"));
				attachment.setThumbnailPath(rset.getString("THUMBNAIL_PATH"));
				accomo.setAttachment(attachment);
			}
			
			query = prop.getProperty("selectOneAccomoReviewScoe");
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, accomoNo);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				accomo.setReviewScore(rset.getDouble("평점"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		System.out.println(accomo);
		
		return accomo;
	}

	

}
