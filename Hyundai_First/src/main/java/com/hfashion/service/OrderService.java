package com.hfashion.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.hfashion.dao.OrderDAO;
import com.hfashion.util.ConnectionProvider;
import com.hfashion.util.JdbcUtil;
import com.hfashion.vo.OrderDTO;

/*
 * 작성자 함세강
 */
public class OrderService {
	//싱글톤 선언
	private OrderService() {};
	private static OrderService instance=null;
	public static OrderService getInstance() {
		if(instance==null) {
			instance = new OrderService();
		}
		return instance;
	}

	
	public void orderProductServie (OrderDTO dto) {
		Connection con = null;
		OrderDAO dao = null;
		try {
			con = ConnectionProvider.getConnection();
			
			String postCode = dto.getPostCode();
			String address = dto.getAddress();
			String userId = dto.getUserID();
			
			dao = OrderDAO.getInstance();
			dao.orderProduct(postCode, address, userId);
			
			
		} catch (NamingException | SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
		
		
	}
	
	
	
}