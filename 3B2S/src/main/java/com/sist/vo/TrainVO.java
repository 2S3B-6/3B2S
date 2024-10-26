package com.sist.vo;

import lombok.Data;

/*
 *  TNO    NOT NULL NUMBER       
	TTYPE  NOT NULL VARCHAR2(20) 
	SSTART NOT NULL VARCHAR2(30) 
	SEND   NOT NULL VARCHAR2(30) 
	TSTART NOT NULL VARCHAR2(30) 
	TEND   NOT NULL VARCHAR2(30) 
	PRICE  NOT NULL NUMBER   
 */
@Data
public class TrainVO {
   private int tno,price;
   private String ttype,sstart,send,tstart,tend;

}
