package com.mobilebackend.configuration;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import com.admin.configuration.AdminConfiguration;

import com.mysite.configuration.MysiteConfiguration;

public class Initializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] { MobileBackendConfiguration.class, MysiteConfiguration.class, AdminConfiguration.class };
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return null;
	}

	@Override
	protected String[] getServletMappings() {
		 return new String[] { "/" };
	}
 
}
