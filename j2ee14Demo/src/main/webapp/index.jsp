<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="com.tresct.hibernate.entities.Persona"%>

<%@ page import="com.tresct.hibernate.util.HibernateUtil"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    
    	<%
    	
    	
    		String nombre=null;
    		try{
    			Persona persona = HibernateUtil.consultarPersona();
    			nombre = persona.getNombres();
    		}catch(Exception e){
    			System.out.println(e.getStackTrace());
    					    			
    		}
    	
		%>
    
        <h1>Hello <%= nombre %>   !</h1>
    </body>
</html>
