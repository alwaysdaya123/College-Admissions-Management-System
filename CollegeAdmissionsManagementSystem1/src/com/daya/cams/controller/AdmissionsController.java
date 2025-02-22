package com.daya.cams.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daya.cams.dto.AdmissionsDto;
import com.daya.cams.form.AdmissionsForm;
import com.daya.cams.service.AdmissionsService;

@WebServlet("/AdmissionsController")
public class AdmissionsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
AdmissionsForm form=new AdmissionsForm();
AdmissionsService service=new AdmissionsService();
String action="";
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	  String fullName=request.getParameter("full_name");
	  String fatherName=request.getParameter("father_name");
	  String motherName=request.getParameter("mother_name");
	  String gender=request.getParameter("gender");
	  String dateOfBirth=request.getParameter("date_of_birth");
	  long parentMobileNumber=Long.parseLong(request.getParameter("parent_mobile_number"));
	  long studentMobileNumber=Long.parseLong(request.getParameter("student_mobile_number"));
	  String email=request.getParameter("e_mail");
	  String address=request.getParameter("address");
	  long joiningYear=Long.parseLong(request.getParameter("joining_year"));
	  String branch=request.getParameter("branch");
	  String pinNumber=request.getParameter("pin_number");
			  
	  form.setFullName(fullName);
	  form.setFatherName(fatherName);
	  form.setMotherName(motherName);
	  form.setGender(gender);
	  form.setDateOfBirth(dateOfBirth);
	  form.setParentMobileNumber(parentMobileNumber);
	 form.setStudentMobileNumber(studentMobileNumber);
	  form.setEmail(email);
	  form.setAddress(address);
	  form.setJoiningYear(joiningYear);
	  form.setBranch(branch);
	  form.setPinNumber(pinNumber);
	  if(action.equals("update")){
		  String result=service.update(form);
			 RequestDispatcher rd= request.getRequestDispatcher("/success.jsp?msg="+result);
			 rd.forward(request,response);  
	  }
	  else{
		  String result=service.addStudent(form);
			 RequestDispatcher rd= request.getRequestDispatcher("/registration_form.jsp?msg="+result);
			 rd.forward(request,response);
		  
	  }
	 
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pinNumber=request.getParameter("pin_number");
		String action=request.getParameter("action");
		
		
		if(pinNumber==null && action==null){
		List<AdmissionsDto> list=service.viewAllAdmissions();
		request.setAttribute("list",list);
		RequestDispatcher rd=request.getRequestDispatcher("/view_all_admissions.jsp");
		rd.forward(request,response);
		}
		else{
			if(action.equals("delete")){
				String result=service.deleteAdmission(pinNumber);
				RequestDispatcher rd= request.getRequestDispatcher("/success.jsp?msg="+result);
				rd.forward(request, response);
			}
		
		
			 else if(action.equals("view")){
				AdmissionsDto dto=service.viewAdmission(pinNumber);
				request.setAttribute("dto", dto);
				RequestDispatcher rd=request.getRequestDispatcher("/view_admission.jsp");
				rd.forward(request, response);
				
			}
			 else if (action.equals("update")){
				 AdmissionsDto dto=service.viewAdmission(pinNumber);
				 request.setAttribute("dto", dto);
				 RequestDispatcher rd=request.getRequestDispatcher("/update.jsp");
				 rd.forward(request, response);
			 }
		 
		}
		}
}
	






