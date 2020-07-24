package com.biz.order.mapper;

import java.util.List;

import com.biz.order.model.OrderVO;

public interface OrderDao {
	
	public List<OrderVO> selectAll();
	
	// Invalid bound statement (not found):
	// 			com.biz.order.mapper.Order.findBySeq
	// Dao에는 method가 있는데
	// 		Mapper는 같은 이름(id값)을 갖는 tag 속성을 찾을 수 없다.
	public OrderVO findBySeq(long seq);
	public List<OrderVO>findByDateDistance(String start_date, String end_date);
	public List<OrderVO>findByPcode(String start_date, String end_date);
	public List<OrderVO>findByPname(String start_date, String end_date);
	
	public int insert(OrderVO orderVO);
	public int update(OrderVO orderVO);
	public int delete(long seq);
	
	
}
