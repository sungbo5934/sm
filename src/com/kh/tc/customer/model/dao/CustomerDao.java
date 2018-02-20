package com.kh.tc.customer.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import static com.kh.tc.common.JDBCTemplet.*;
import com.kh.tc.customer.model.vo.Customer;

public class CustomerDao {

	public Customer loginCheck(Connection con, String userId, String password) {
		Customer loginUser=null;
		PreparedStatement pstmt=null;
		ResultSet rset=null;
		
		Properties prop = new Properties();
		
		String fileName = CustomerDao.class.getResource("/sql/customer/customer-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
			String query=prop.getProperty("loginCheck");
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setString(2, password);
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				loginUser=new Customer();
				
				loginUser.setUserId(rset.getString("user_id"));
				loginUser.setPassword(rset.getString("password"));
				loginUser.setUserName(rset.getString("user_name"));
				loginUser.setAge(rset.getInt("age"));
				loginUser.setGender(rset.getString("gender"));
				loginUser.setEmail(rset.getString("email"));
				loginUser.setPhone(rset.getString("phone"));
				loginUser.setAddress(rset.getString("address"));
				loginUser.setHobby(rset.getString("hobby"));
				loginUser.setEnrollDate(rset.getDate("enrolldate"));
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
			
		}
		return loginUser;
	}

}
