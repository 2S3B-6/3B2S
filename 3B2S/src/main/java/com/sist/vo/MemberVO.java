package com.sist.vo;

import lombok.Data;
import java.util.*;

@Data
public class MemberVO {
	private String userId,userPwd, userName, sex,post,addr1,addr2,email,phone1, phone2,phone3, phone,content, birthday, team, dbday;
	private int enabled;
	private Date regdate, modifydate, lasstlogin;
	private String msg, authority;
}
