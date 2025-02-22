package com.daya.cams.dao;
import java.sql.*;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;

import com.daya.cams.bo.AdmissionsBo;
import com.daya.cams.dto.AdmissionsDto;



//import com.daya.cams.bo.AdmissionsBo;
public class AdmissionsDao {
	private static final String VIEW_ALL_QUERY = "select * from  admissions";
	private static final String DELETE_QUERY = "delete from admissions where pin_number=?";
	private static final String VIEW_QUERY = "select * from admissions where pin_number=?";

	private static final String UPDATE_QUERY = "update admissions set full_name=?,father_name=?,mother_name=?,gender=?,date_of_birth=?,parent_mobile_number=,student_mobile_number=?,e_mail=?,address=?,joining_year=?,branch=? where pin_number=?";	
	
	public String addStudent(AdmissionsBo bo){
		String result="";
		try{
			Class.forName("com.mysql.jdbc.Driver");  
			 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cams","dayakar","daya2431"); 
			PreparedStatement ps=con.prepareStatement("insert into admissions(full_name,father_name,mother_name,gender,date_of_birth,parent_mobile_number,student_mobile_number,e_mail,address,joining_year,branch,pin_number)values(?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,bo.getFullName() );
		ps.setString(2,bo.getFatherName() );
		ps.setString(3,bo.getMotherName() );
		ps.setString(4,bo.getGender());
		ps.setString(5,bo.getDateOfBirth() );
		ps.setLong(6,bo.getParentMobileNumber());
		ps.setLong(7,bo.getStudentMobileNumber());
		ps.setString(8,bo.getEmail());
		ps.setString(9,bo.getAddress());
		ps.setLong(10,bo.getJoiningYear());
		ps.setString(11,bo.getBranch());
		ps.setString(12,bo.getPinNumber());
		int i= ps.executeUpdate();
		if(i>0){
			result="Student Registered Successully";
		}
		else{
			result="Error.Please try again later...";
		}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return result;

}
	public String update(AdmissionsBo bo){
		String result="";
		Connection con=null;
		try{
			Class.forName("com.mysql.jdbc.Driver");  
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cams","dayakar","daya2431"); 
			PreparedStatement ps=con.prepareStatement(UPDATE_QUERY);
		ps.setString(1,bo.getFullName() );
		ps.setString(2,bo.getFatherName() );
		ps.setString(3,bo.getMotherName() );
		ps.setString(4,bo.getGender());
		ps.setString(5,bo.getDateOfBirth() );
		ps.setLong(6,bo.getParentMobileNumber());
		ps.setLong(7,bo.getStudentMobileNumber());
		ps.setString(8,bo.getEmail());
		ps.setString(9,bo.getAddress());
		ps.setLong(10,bo.getJoiningYear());
		ps.setString(11,bo.getBranch());
		ps.setString(12,bo.getPinNumber());
		int i= ps.executeUpdate();
		if(i>0){
			result="update  Successully";
		}
		else{
			result="Error.Please try again later...";
		}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return result;

}
	public List<AdmissionsDto> viewAllAdmissions(){
		 List<AdmissionsDto> admissionsList =new ArrayList<AdmissionsDto>();
		
		try{
			Class.forName("com.mysql.jdbc.Driver");  
			 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cams","dayakar","daya2431"); 
			 PreparedStatement ps=con.prepareStatement(VIEW_ALL_QUERY);
			 ResultSet rs=ps.executeQuery();
			 while(rs.next()){
				
				 AdmissionsDto dto=new AdmissionsDto();
				 dto.setPinNumber(rs.getString(12));
				 dto.setFullName(rs.getString(1));
				 dto.setBranch(rs.getString(11));
				 dto.setGender(rs.getString(4));
				 dto.setStudentMobileNumber(rs.getLong(7));
				 dto.setEmail(rs.getString(8));
				
				 admissionsList.add(dto);
				 
				 
			 }
			 
		}
		catch (Exception e)
		{
			e.printStackTrace();
			
		}
		return admissionsList;
		
	}
	public String deleteAdmission(String pinNumber){
		Connection con=null;
		String result="";
		try{
			Class.forName("com.mysql.jdbc.Driver");  
			  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cams","dayakar","daya2431"); 
			 PreparedStatement ps=con.prepareStatement(DELETE_QUERY);
			ps.setString(1, pinNumber);
			int i=ps.executeUpdate();
			if(i>0){
				result="Admission delete successfully";
				
			}
			else{
				result="Error!Pls try again....";
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		return result;
	}
	public AdmissionsDto viewAdmission(String pinNumber){
		Connection con=null;
		AdmissionsDto dto=null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cams","dayakar","daya2431");
		
			PreparedStatement ps=con.prepareStatement(VIEW_QUERY);
			ps.setString(1, pinNumber);
			ResultSet rs=ps.executeQuery();
			 if(rs.next()){
					dto=new AdmissionsDto();
				
				 dto.setPinNumber(rs.getString(12));
				 dto.setFullName(rs.getString(1));
				 dto.setBranch(rs.getString(11));
				 dto.setGender(rs.getString(4));
				 dto.setStudentMobileNumber(rs.getLong(7));
				 dto.setEmail(rs.getString(8));
				 dto.setAddress(rs.getString(9));
				 dto.setDateOfBirth(rs.getString(5));
				 dto.setFatherName(rs.getString(2));
				 dto.setJoiningYear(rs.getInt(10));
				 dto.setMotherName(rs.getString(3));
				 dto.setParentMobileNumber(rs.getLong(6));
			
			 } 
			// System.out.println("Testing:"+dto);
			 }
		catch(Exception e){
			e.printStackTrace();
			
		}
		return dto;
			
		}
	
	
	}

	

