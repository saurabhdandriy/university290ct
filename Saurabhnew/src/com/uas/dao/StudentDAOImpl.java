package com.uas.dao;

import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;
import com.uas.bean.Application;
import com.uas.bean.Participant;


@Repository
@Transactional
public class StudentDAOImpl implements IStudentDAO{

	@PersistenceContext
	private EntityManager em;
	public int addStudentDetails(Application rc) {
		System.out.println("in Dao");
		em.persist(rc);
		return rc.getApplicationId();
	}
	@Override
	public ArrayList<Application> getAllStudentInfo() {
		Query q=em.createQuery("Select ss from Application ss");
		
			return (ArrayList<Application>)q.getResultList();
	}
	@Override
	public int addParticipantDetails(Participant pc) {
		System.out.println("in Dao");
		em.persist(pc);
		return pc.getRollno();
		
	
	}
	@Override
	public void updateApplicationDetails(Application appBean) {
		
		
	}
	@Override
	public int updateStatusDetails(Application ap) {
		
		String status=ap.getStatus();
		String interview=ap.getDateOfInterview();
		int id=ap.getApplicationId();
		
		
		Query updateStatus= em.createQuery("update Application a set a.status=:status, a.dateOfInterview=:interview where a.ApplicationId=:id ");
		updateStatus.setParameter("status", status);
		updateStatus.setParameter("interview", interview);
		updateStatus.setParameter("id", id);
		int result= updateStatus.executeUpdate();
		return result;
		
	}
	@Override
	public ArrayList<Application> getAllStatus(int id) {
		Query query=em.createQuery("select ss from Application ss where ApplicationId=:id");
		query.setParameter("id", id);
		return (ArrayList<Application>)query.getResultList();
	}
	
}
