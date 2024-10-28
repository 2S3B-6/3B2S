package com.sist.vo;

import java.util.*;
import lombok.Data;

@Data
public class JjimVO {
	private int hno,price,jjimcount;
	private String name,address,location;
	private HotelVO hvo = new HotelVO();
 
    
}
