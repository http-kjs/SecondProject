package com.sist.mapper;
import java.util.*;



import org.apache.ibatis.annotations.Select;

import com.sist.vo.*;
public interface FundMapper {
	public List<FundVO> fundListData(Map map);
}