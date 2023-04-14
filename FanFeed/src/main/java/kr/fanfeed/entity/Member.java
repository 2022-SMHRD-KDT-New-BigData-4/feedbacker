package kr.fanfeed.entity;

import java.util.Date;

import lombok.Data;

@Data
public class Member {

	    private int memberSeq;

	    private String id;

	    private String pw;

	    private String email;

	    private String nick;

	    private Date regDate;

	    private String wthYn;

	    private Date wthDate;

	    private String freeYn;

	    private Date srvcEndDate;

}
