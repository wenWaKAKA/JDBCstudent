package com.codewen.serv;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.codewen.conn.GetConn;
import com.codewen.entity.Student;
import com.codewen.entity.User;

public class Controller {

	Connection connection = GetConn.getConnection();
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;

	public boolean login(User user) {
		try {
			preparedStatement = connection.prepareStatement("select * from user where username=? and password=?");
			preparedStatement.setString(1, user.getUserName());
			preparedStatement.setString(2, user.getPassWord());
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				return true;
			} else {
				return false;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		} finally {
			try {
				resultSet.close();
				preparedStatement.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
	}

	public void inputStudent(Student student) {
		try {
			preparedStatement = connection.prepareStatement(
					"insert into student(t_name,n_name,sex,birthday,major,class,interesting) values(?,?,?,?,?,?,?)");
			preparedStatement.setString(1, student.getTname());
			preparedStatement.setString(2, student.getNname());
			preparedStatement.setBoolean(3, student.getSex());
			preparedStatement.setString(4, student.getBirthday());
			preparedStatement.setString(5, student.getMajor());
			preparedStatement.setString(6, student.getTclass());
			preparedStatement.setString(7, student.getInteresting());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {

				preparedStatement.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
	}

}
