package kr.fanfeed.entity;

import lombok.Data;

@Data
public class Review {
	
    private Integer seq;

    private String review;

    private String isbn;

    private Double score;

    private String writer;

    private String datetime;
	
}
