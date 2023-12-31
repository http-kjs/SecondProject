package com.sist.mapper;
import java.util.*;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Update;

import com.sist.vo.*;
public interface BuyMapper {
	//@Insert("INSERT INTO wadiz_buy_info (bino, acno, wfno, name, poster, rname, tprice, gcount, regdate, idopen, priceopen) "
	///		+ "VALUES(wbi_bino_seq.nextval, 1, #{wfno}, #{name}, #{poster}, #{rname}, #{tprice}, #{gcount}, SYSDATE, #{idopen}, #{priceopen})")
	//public void fundBuyInsert(BuyVO vo);
	
	//@Insert("INSERT INTO wadiz_buy_info (bino, acno, wsno, name, poster, rname, tprice, gcount, regdate, idopen, priceopen) "
	//		+ "VALUES(wbi_bino_seq.nextval, 2, #{wsno}, #{name}, #{poster}, #{rname}, #{tprice}, #{gcount}, SYSDATE, #{idopen}, #{priceopen})")
	//public void storeBuyInsert(BuyVO vo);
	
	@Insert("INSERT INTO wadiz_buy_info (bino, acno, wfno, rno, name, poster, rname, tprice, gcount, regdate, id, rcont, delfee, delstart, rprice, usepoint) "
			+ "VALUES(wbi_bino_seq.nextval, 1, #{bvo.wfno}, #{bvo.rno}, #{bvo.name}, #{bvo.poster}, #{bvo.rname}, #{bvo.tprice}, #{bvo.gcount}, SYSDATE, #{bvo.id}, #{bvo.rcont}, #{bvo.delfee}, #{bvo.delstart}, #{bvo.rprice}, #{bvo.usepoint})")
	public void fundBuyInsert(Map map);
	
	@Insert("INSERT INTO wadiz_buy_info (bino, acno, wsno, name, poster, rname, tprice, gcount, regdate, id) "
			+ "VALUES(wbi_bino_seq.nextval, 2, #{wsno}, #{rno}, #{name}, #{poster}, #{rname}, #{tprice}, #{gcount}, SYSDATE, #{id})")
	public void storeBuyInsert(BuyVO vo);
	
	@Update("UPDATE wadiz_funding_reward SET curq = curq-#{gcount} where rno=#{rno}")
	public void fundCount (Map map);
}
// wfno => poster
// rno => rname, tprice (rprice*gcount(2로)
// session => name, id