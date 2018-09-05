package com.itmuch.cloud.study.controller;

import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WechatController {
	private static Logger logger = Logger.getLogger(WechatController.class);
	 
	private static String token = "whxj";
 
	@RequestMapping(value = "/wechat/wx")
	public void get(HttpServletRequest request, HttpServletResponse response) throws Exception {
 
		logger.error("WechatController   ----   WechatController");
 
		System.out.println("========WechatController========= ");
		logger.info("请求进来了...");
 
		Enumeration pNames = request.getParameterNames();
		while (pNames.hasMoreElements()) {
			String name = (String) pNames.nextElement();
			String value = request.getParameter(name);
			// out.print(name + "=" + value);
 
			String log = "name =" + name + "     value =" + value;
			logger.error(log);
		}
 
		PrintWriter out = response.getWriter();
 
		out.print(token);
 
		out.close();
		out = null;
	}
}
