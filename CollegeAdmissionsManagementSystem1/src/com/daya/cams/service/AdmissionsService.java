package com.daya.cams.service;
import java.util.List;

import com.daya.cams.bo.AdmissionsBo;
import com.daya.cams.dao.AdmissionsDao;
import com.daya.cams.dto.AdmissionsDto;
import com.daya.cams.form.AdmissionsForm;

public class AdmissionsService {
	AdmissionsBo bo=new AdmissionsBo();
	AdmissionsDao dao=new AdmissionsDao();
	public String addStudent(AdmissionsForm form){
		bo.setFullName(form.getFullName());
		bo.setFatherName(form.getFatherName());
		bo.setMotherName(form.getMotherName());
		bo.setGender(form.getGender());
		bo.setDateOfBirth(form.getDateOfBirth());
		bo.setParentMobileNumber(form.getParentMobileNumber());
		bo.setStudentMobileNumber(form.getStudentMobileNumber());
		bo.setEmail(form.getEmail());
		bo.setAddress(form.getAddress());
		bo.setJoiningYear(form.getJoiningYear());
		bo.setBranch(form.getBranch());
		bo.setPinNumber(form.getPinNumber());
		
		
		String res=dao.addStudent(bo);
		return res;
	}
	public String update(AdmissionsForm form){
		bo.setFullName(form.getFullName());
		bo.setFatherName(form.getFatherName());
		bo.setMotherName(form.getMotherName());
		bo.setGender(form.getGender());
		bo.setDateOfBirth(form.getDateOfBirth());
		bo.setParentMobileNumber(form.getParentMobileNumber());
		bo.setStudentMobileNumber(form.getStudentMobileNumber());
		bo.setEmail(form.getEmail());
		bo.setAddress(form.getAddress());
		bo.setJoiningYear(form.getJoiningYear());
		bo.setBranch(form.getBranch());
		bo.setPinNumber(form.getPinNumber());
		
		
		String res=dao.update(bo);
		return res;
	}
	public List <AdmissionsDto> viewAllAdmissions(){
		List<AdmissionsDto> res=dao.viewAllAdmissions();
		return res;
	}
	public String deleteAdmission(String pinNumber){
		String res=dao.deleteAdmission(pinNumber);
		return res;
	}
	public AdmissionsDto viewAdmission(String pinNumber ){
		AdmissionsDto dto=dao.viewAdmission(pinNumber);
		return dto;
	}
	
}
	