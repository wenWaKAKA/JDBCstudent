package com.codewen.serv;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
			preparedStatement.setByte(3, student.getSex());
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

	public List<Student> disPlay() {
		List<Student> stusList = new ArrayList<Student>();
		try {
			preparedStatement = connection.prepareStatement("select * from student");
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Student student = new Student();
				student.setId(resultSet.getInt(1));
				student.setTname(resultSet.getString(2));
				student.setNname(resultSet.getString(3));
				student.setSex(resultSet.getByte(4));
				student.setBirthday(resultSet.getString(5));
				student.setMajor(resultSet.getString(6));
				student.setTclass(resultSet.getString(7));
				student.setInteresting(resultSet.getString(8));
				stusList.add(student);
			}
			return stusList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return stusList;
		}

	}

	public Student findbyid(int id) {
		try {
			Student student = null;
			preparedStatement = connection.prepareStatement("select * from student where id=?");
			preparedStatement.setInt(1, id);
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				student = new Student();
				student.setId(resultSet.getInt(1));
				student.setId(resultSet.getInt(1));
				student.setTname(resultSet.getString(2));
				student.setNname(resultSet.getString(3));
				student.setSex(resultSet.getByte(4));
				student.setBirthday(resultSet.getString(5));
				student.setMajor(resultSet.getString(6));
				student.setTclass(resultSet.getString(7));
				student.setInteresting(resultSet.getString(8));
			}
			return student;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
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

	public void insertbyid(Student student, int id) {
		try {
			preparedStatement = connection.prepareStatement(
					"update student set t_name=?,n_name=?,sex=?,birthday=?,major=?,class=?,interesting=? where id=?");
			preparedStatement.setString(1, student.getTname());
			preparedStatement.setString(2, student.getNname());
			preparedStatement.setByte(3, student.getSex());
			preparedStatement.setString(4, student.getBirthday());
			preparedStatement.setString(5, student.getMajor());
			preparedStatement.setString(6, student.getTclass());
			preparedStatement.setString(7, student.getInteresting());
			preparedStatement.setInt(8, id);
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

	public void deletebyid(int id) {
		try {
			preparedStatement = connection.prepareStatement("delete from student where id=?");
			preparedStatement.setInt(1, id);
			preparedStatement.execute();
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
