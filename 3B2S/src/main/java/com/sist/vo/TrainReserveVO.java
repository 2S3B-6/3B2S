package com.sist.vo;

import java.util.Date;

import lombok.Data;

@Data
public class TrainReserveVO {
	private int rno,tno,isreserve,totalprice;
	private String id,ttype,tday,tstart,tend,tinwon,tseat,sstart,send,dbday;
	private Date regdate;
}
