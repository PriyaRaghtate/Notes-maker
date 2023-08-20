package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Factoryprovider {
public static SessionFactory sf;

public static SessionFactory getsf(){
	if(sf==null){
		sf=new Configuration().configure("hib.cfg.xml").buildSessionFactory();
		
	}
	return sf;
}
//to close factory
public void closesf(){
	if(sf.isOpen()){
		sf.close();
	}
}
}
