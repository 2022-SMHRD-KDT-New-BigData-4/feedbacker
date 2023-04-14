package kr.fanfeed.mapper;

import java.util.List;

import kr.fanfeed.entity.Criteria;
import kr.fanfeed.entity.Member;

public interface FanFeedMapper {
	
	public void join(Member vo);
	
	public Member login(Member vo);

}
