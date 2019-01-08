package com.common.listener;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.Enumeration;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

@Component
public class SystemContextListener implements ServletContextListener,HttpSessionAttributeListener,HttpSessionListener {

	private Logger log = Logger.getLogger(SystemContextListener.class) ;
	
	
    @Override
    public void contextInitialized(ServletContextEvent sce) {
    	/***项目启动时加载配置文件中的属性****/
		Properties properties = new  Properties();
		try {
			properties.load(
					new InputStreamReader(this.getClass().getResourceAsStream("/application.properties"), "UTF-8"));
		} catch (UnsupportedEncodingException e) {
			log.error(e.getMessage()) ;
			e.printStackTrace();
		} catch (IOException e) {
			log.error(e.getMessage()) ;
			e.printStackTrace();
		} 
		ServletContext  context = sce.getServletContext(); 
		Enumeration<Object> objSystem = properties.keys(); 
		while (objSystem.hasMoreElements()) {
    		String key = objSystem.nextElement().toString();
    		context.setAttribute(key, properties.getProperty(key));
		}
		String conterxtPath = context.getRealPath("/") ;
		context.setAttribute("CONTEXT_PATH", conterxtPath);
		/***初始化redis配置并将其保存至项目中***/
		
    }
   
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    	
    
    }

	
	@Override
    public void attributeAdded(HttpSessionBindingEvent event) {
		
	}

	@Override
    public void attributeRemoved(HttpSessionBindingEvent event) {
	
	}

	@Override
    public void attributeReplaced(HttpSessionBindingEvent event) {

	}

	@Override
    public void sessionCreated(HttpSessionEvent se) {
	
	}

	@Override
    public void sessionDestroyed(HttpSessionEvent se) {
	
	}

}
