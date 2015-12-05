package com.tresct.hibernate.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.tresct.hibernate.entities.Persona;

public class HibernateUtil {

	
	

	public static Persona consultarPersona(){
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Persona persona=(Persona)session.get(Persona.class, 1);
		return persona;
		
	}
	
}
