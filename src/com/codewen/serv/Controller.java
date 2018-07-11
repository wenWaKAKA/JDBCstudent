package com.codewen.serv;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.codewen.conn.GetConn;
import com.codewen.entity.User;

public class Controller {

	Connection connection = GetConn.getConnection();

	public boolean login(User user) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from user where username=? and password=?");
			preparedStatement.setString(1, user.getUserName());
			preparedStatement.setString(2, user.getPassWord());
			ResultSet resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				return true;
			} else {
				return false;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

}
