package com.sist.dao;
import com.sist.vo.*;

import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.mapper.*;
@Repository
public class BuyDAO {
	@Autowired
	private BuyMapper mapper;
	
	//@Insert("INSERT INTO wadiz_buy_info (bino, acno, wfno, name, poster, rname, tprice, gcount, regdate, idopen, priceopen) "
	//		+ "VALUES(wbi_bino_seq.nextval, 1, #{wfno}, #{name}, #{poster}, #{rname}, #{tprice}, #{gcount}, SYSDATE, #{idopen}, #{priceopen})")
	public void fundBuyInsert(Map map)
	{
		mapper.fundBuyInsert(map);
	}
	
	//@Insert("INSERT INTO wadiz_buy_info (bino, acno, wsno, name, poster, rname, tprice, gcount, regdate, idopen, priceopen) "
	//		+ "VALUES(wbi_bino_seq.nextval, 2, #{wsno}, #{name}, #{poster}, #{rname}, #{tprice}, #{gcount}, SYSDATE, #{idopen}, #{priceopen})")
	public void storeBuyInsert(BuyVO vo)
	{
		mapper.storeBuyInsert(vo);
	}
	
	//@Update("UPDATE wadiz_funding_reward SET curq = curq-#{gcount} where rno=#{rno}")
	public void fundCount (Map map)
	{
		mapper.fundCount(map);
	}
}
