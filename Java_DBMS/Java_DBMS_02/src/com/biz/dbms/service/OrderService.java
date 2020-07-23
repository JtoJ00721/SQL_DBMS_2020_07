package com.biz.dbms.service;

import java.sql.SQLException;
import java.util.List;

import com.biz.dbms.domain.OrderVO;

public interface OrderService {

	// java에서 DBMS와 관련된 APP을 만들떄 최소한으로 구현해야할 method 디자인 패턴

	public int insert(OrderVO orderVO) throws SQLException; // OrderVO에 값을 담아서 전달받아 insert 수행

	public List<OrderVO> selectAll() throws SQLException; // 조건에 관계없이 모든 데이터를 추출하여 리스트 타입으로 return

	public OrderVO findBySeq(long seq) throws SQLException; // findById(), PK 칼럼으로 값을 찾을때 사용

	public int update(OrderVO orderVO) throws SQLException;

	public int delete(long seq) throws SQLException; // PK값을 매개변수로 받음

	// 인서트 업데이트 딜리트 하면 성공시 1을 리턴하니 int 타입이다.

}
