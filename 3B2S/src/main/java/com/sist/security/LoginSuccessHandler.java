package com.sist.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.sist.service.MemberService;
import com.sist.vo.MemberVO;

import lombok.Setter;

public class LoginSuccessHandler /* implements AuthenticationSuccessHandler */{
	@Setter
	private String defaultUrl;

	@Autowired
	private MemberService mService;
	
	
}
