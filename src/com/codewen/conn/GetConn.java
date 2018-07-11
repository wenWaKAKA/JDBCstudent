package com.codewen.conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class GetConn {

	public static Connection getConnection() {
		Connection connection = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			String urlString = "jdbc:mysql://127.0.0.1/student?useUnicode=true&characterEncoding=utf8";
			String userString = "root";
			String pasString = "123456";
			connection = DriverManager.getConnection(urlString, userString, pasString);
			System.out.println(connection.getMetaData().getURL());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return connection;

	}
}
