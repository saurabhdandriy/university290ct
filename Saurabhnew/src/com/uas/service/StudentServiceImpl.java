package com.uas.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;




import com.uas.bean.Application;
import com.uas.bean.Participant;
import com.uas.dao.IStudentDAO;
@Service
public  class StudentServiceImpl implements IStudentService {
	@Autowired
private IStudentDAO dao;
	@Override
	public int addStudentDetails(Application rc) {
		System.out.println("in service");
		int appid = dao.addStudentDetails(rc);
		return appid;
	}
	
	@Override
	public int addParticipantDetails(Participant pc) {
		System.out.println("in service");
		int pid = dao.addParticipantDetails(pc);
		return pid;
	}

	@Override
	public ArrayList<Application> getAllStudentInfo() {
		return dao.getAllStudentInfo();
	
	}

	@Override
	public void updateApplicationDetails(Application appBean) {
		dao.updateApplicationDetails(appBean);

		
	}

	@Override
	public int updateStatusDetails(Application ap) {

		return dao.updateStatusDetails(ap);
	}

	@Override
	public ArrayList<Application> getAllStatus(int id) {
		return dao.getAllStatus(id);
	}

	

	
}
