package kr.co.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.junit.Test;

public class mysqlTest {
	/*<bean id="hikariConfig" class="com.zaxxer.hikari.HikariConfig">
	<property name="driverClassName" value="com.mysql.cj.jdbc.Driver"></property>
	<property name="jdbcUrl" value=""></property>
	<property name="username" value="root"></property>
	<property name="password" value="0000"></property>
</bean>*/
	private static final String driver = "com.mysql.cj.jdbc.Driver";
	private static final String url = "jdbc:mysql://127.0.0.1:3306/emoteshop_db";
	private static final String user = "root";
	private static final String pass = "0000";
	
	@Test
	public void testConnection() throws ClassNotFoundException {
		Class.forName(driver);
		try {
			Connection conn = DriverManager.getConnection(url,user,pass);
			System.out.println(conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
