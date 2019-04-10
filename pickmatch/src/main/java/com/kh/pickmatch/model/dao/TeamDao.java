package com.kh.pickmatch.model.dao;

import java.util.List;
import java.util.Map;

import com.kh.pickmatch.model.vo.Match;
import com.kh.pickmatch.model.vo.MoneyHistory;
import com.kh.pickmatch.model.vo.TeamBoard;
import com.kh.pickmatch.model.vo.TeamOperationAccount;

public interface TeamDao {

	List<Map<String, String>> selectTMemberList(Map<String, String> map);
	String selectTeamOne(String memberId);
	TeamOperationAccount selectAccountOne(String teamName);
	List<Map<String, Object>> selectMoneyHistoryList(Map<String, String> map);
	int updateTeamAccount(TeamOperationAccount map);
	int insertTeamAccount(TeamOperationAccount toAccount);
	int insertMHistory(MoneyHistory mHistory);
	List<Match> selectMatchList(String teamName, int cPage, int numPerPage);
	int selectMatchCount(String teamName);
	
	
	
	
	
	
	
	
	
	
	int selectCount();
	List<TeamBoard> selectList(int cPage, int numPerPage);
	Object selectTeamBoard(int boardNo);
	Object selectAttachment(int boardNo);
	
}
