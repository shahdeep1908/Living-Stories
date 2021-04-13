package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

public class Users 
{
	private int Id;
	private String username, password, email, location;
	private String holdername, propertyname, description, details, AC, geyser, parking, food, timing, price;
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getHoldername() {
		return holdername;
	}
	public void setHoldername(String holdername) {
		this.holdername = holdername;
	}
	public String getPropertyname() {
		return propertyname;
	}
	public void setPropertyname(String propertyname) {
		this.propertyname = propertyname;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getAC() {
		return AC;
	}
	public void setAC(String aC) {
		AC = aC;
	}
	public String getGeyser() {
		return geyser;
	}
	public void setGeyser(String geyser) {
		this.geyser = geyser;
	}
	public String getParking() {
		return parking;
	}
	public void setParking(String parking) {
		this.parking = parking;
	}
	public String getFood() {
		return food;
	}
	public void setFood(String food) {
		this.food = food;
	}
	public String getTiming() {
		return timing;
	}
	public void setTiming(String timing) {
		this.timing = timing;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getId() {
		return Id;
	}
	public void setId(int Id) {
		this.Id = Id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean insert_price(String username3, String price)
	{
		String url = "jdbc:mysql://localhost:3307/project",
				user = "root", 
				pass = "mysql";
		try 
		{
			Class.forName("com.mysql.jdbc.Driver"); // Defining JDBC Driver
			Connection conn = DriverManager.getConnection(url, user, pass);
			
			String update = "update seller_details set price = ? where username = ?";
			PreparedStatement ps = conn.prepareStatement(update);
			ps.setString(1, price);
			ps.setString(2, username3);
			ps.executeUpdate();
			return true;
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}
	public boolean InsertUser(String username1, String password1, String email1, String location1)
	{
		String url = "jdbc:mysql://localhost:3307/project",
				user = "root", 
				pass = "mysql";
		try 
		{
			Class.forName("com.mysql.jdbc.Driver"); // Defining JDBC Driver
			Connection conn = DriverManager.getConnection(url, user, pass);
			
			String insert = "insert into user_credentials(username, password, email, location) values(?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(insert);
			ps.setString(1, username1);
			ps.setString(2, password1);
			ps.setString(3, email1);
			ps.setString(4, location1);
			ps.executeUpdate();
			return true;
		}
		catch (Exception e) 
		{
			System.out.println("Error Message :"+e.getMessage());
		}
		return false;
	}
	
	public boolean CheckCredentials(String username2, String password2)
	{
		String url = "jdbc:mysql://localhost:3307/project",
				user = "root", 
				pass = "mysql";
		try 
		{
			Class.forName("com.mysql.jdbc.Driver"); // Defining JDBC Driver
			Connection conn = DriverManager.getConnection(url, user, pass);

			String check = "select * from user_credentials where username = ? and password = ?";
			PreparedStatement ps = conn.prepareStatement(check);
			ps.setString(1, username2);
			ps.setString(2, password2);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		catch (Exception e) {
			System.out.println("Error Message :"+e.getMessage());
		}
		return false;
	}
	
	public boolean SellerDetails(String username1, String holdername1,String propertyname1,String description1, String details1, String AC1, String geyser1, String parking1, String food1, String timing1)
	{
		String url = "jdbc:mysql://localhost:3307/project",
				user = "root", 
				pass = "mysql";
		System.out.println(username1);
		System.out.println(holdername1);
		System.out.println(propertyname1);
		System.out.println(description1);
		System.out.println(details1);
		System.out.println(AC1);
		System.out.println(geyser1);
		System.out.println(parking1);
		System.out.println(food1);
		System.out.println(timing1);
		try 
		{
			Class.forName("com.mysql.jdbc.Driver"); // Defining JDBC Driver
			Connection conn = DriverManager.getConnection(url, user, pass);
			
			String insert = "insert into seller_details(username, holdername, propertyname, description, details, AC, geyser, parking, food, timing) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(insert);
			ps.setString(1, username1);
			ps.setString(2, holdername1);
			ps.setString(3, propertyname1);
			ps.setString(4, description1);
			ps.setString(5, details1);
			ps.setString(6, AC1);
			ps.setString(7, geyser1);
			ps.setString(8, parking1);
			ps.setString(9, food1);
			ps.setString(10, timing1);
			ps.executeUpdate();
			
			String insert1 = "update images set locality = ? where username = ?";
			PreparedStatement ps1 = conn.prepareStatement(insert1);
			ps1.setString(1, description1);
			ps1.setString(2, username1);
			ps1.executeUpdate();
			return true;
		}
		catch (Exception e) 
		{
			System.out.println("Error Message :"+e.getMessage());
		}
		return false;
	}
}
