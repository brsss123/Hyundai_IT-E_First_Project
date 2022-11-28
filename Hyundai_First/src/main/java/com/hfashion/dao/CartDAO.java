package com.hfashion.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.hfashion.vo.CartVO;

import oracle.jdbc.OracleTypes;

/*
 * 신수진 작성
 * */
public class CartDAO {
	private static CartDAO cDAO = new CartDAO();
	private DataSource ds = null;
	private String selectCart = "{call select_cart(?, ?)}";
	private String insertCart = "{call insert_cart(?, ?, ?, ?)}";
	
	private CartDAO() {
		try {
			Context con = new InitialContext();
			Context envcon = (Context) con.lookup("java:/comp/env");
			ds = (DataSource) envcon.lookup("jdbc/oracle88");
		} catch(NamingException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	// 신수진 - 장바구니 담기
	public boolean insertCart(CartVO cart) {
		int rs = 0;
		
		try(Connection conn = ds.getConnection();
				CallableStatement cstmt = conn.prepareCall(insertCart)){
			cstmt.setString(1, cart.getPro_no());
			cstmt.setString(2, cart.getSize_name());
			cstmt.setString(3, cart.getUser_id());
			cstmt.setInt(4, cart.getCart_amount());
			rs = cstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return rs == 0 ? false : true;
	}
	
	// 신수진 - 장바구니 목록 select
	public List<CartVO> selectCart(String user_id){
		List<CartVO> cList = new ArrayList<>();
		
		try(Connection conn = ds.getConnection();
				CallableStatement cstmt = conn.prepareCall(selectCart);){
			cstmt.setString(1, user_id);
			cstmt.registerOutParameter(2, OracleTypes.CURSOR);
			
			try {
				cstmt.executeQuery();
				ResultSet rs = (ResultSet) cstmt.getObject(2);
				
				while(rs.next()) {
					CartVO cVO;
					int cart_amount = rs.getInt(1);
					String size_name = rs.getString(2);
					String id = rs.getString(3);
					String pro_no = rs.getString(4);
					String pro_name = rs.getString(5);
					int pro_price = rs.getInt(6);
					String brand_name = rs.getString(7);
					String img_loc = rs.getString(8);
					System.out.println(cart_amount + " " + size_name + " " + id + " " + pro_no + " " + pro_name + " " + pro_price + " " + brand_name + " " + img_loc);
					cVO = new CartVO(cart_amount, size_name, id, pro_no, pro_name, pro_price, brand_name, img_loc);
					cList.add(cVO);
				}
			} catch(SQLException e) {
				e.printStackTrace();
			}
		
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return cList;
	}
	
	public static CartDAO getInstance() {
		return cDAO;
	}
}