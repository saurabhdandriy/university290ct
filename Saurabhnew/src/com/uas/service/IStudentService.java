package com.uas.service;

import java.util.ArrayList;

import com.uas.bean.Application;
import com.uas.bean.Participant;



public interface IStudentService {

	int addStudentDetails(Application rc);

	ArrayList<Application> getAllStudentInfo();

	int addParticipantDetails(Participant pc);

	void updateApplicationDetails(Application appBean);

	int updateStatusDetails(Application ap);

	ArrayList<Application> getAllStatus(int id);



}
