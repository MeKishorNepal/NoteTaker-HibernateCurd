package com.helper;

import org.hibernate.SessionFactory;

import  org.hibernate.cfg.Configuration;

public class FactoryProvider {
    public static SessionFactory factory;

    //we can call directly static variable in static method
    public static SessionFactory getFactory(){

        if(factory==null){
            factory=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();

        }
        return factory;
    }
    public void closeFactory(){
        if(factory.isOpen()){
            factory.close();
        }
    }
}
