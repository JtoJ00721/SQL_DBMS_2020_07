package com.biz.order.controller;

import com.biz.order.model.OrderVO;

public class ParamEx_01 {
	
	public static void main(String[] args) {
		
		ParamTest pTest = new ParamTest();
		OrderVO orderVO = new OrderVO();
		int[] ary = new int[10];
		ary[0] = 12; 
		String sim = "에엫따..!";
		
		/*
		 * primitive 형 변수는 다른 method에 매개변수로 전달했을때
		 * 전달받은 메서드에서 값을 변경해도 매개변수로 보낸 곳에서
		 * 원래 있던 값은 절대 변함이 없다.
		 * 
		 * Class형 변수는 다른 메서드에 매개변수로 전달했을때
		 * 전달받은 method에서 객체의 일부요소(필드변수)를 변경하면
		 * 보낸곳의 원본 데이터가 변해 버린다.
		 */
		
		int intNum1 = 3;
		int intNum2 = 4;
		pTest.add(intNum1, intNum2);
		
		System.out.println(orderVO.getO_pcode());
		pTest.add(orderVO);
		System.out.println(orderVO.getO_pcode());
		/*
		 * 배열을 다른 method에서 매개변수로 전달했을 때
		 * 전달받은 method에서 배열의 일부요소 값을 변경하면
		 * 보낸곳의 원본 데이터가 변해 버린다.
		 */
		pTest.add(ary);
		
		/*
		 * 
		 */
		System.out.println(sim);
		pTest.add(sim);
		System.out.println(sim);
		
		System.out.println(intNum1);
		
		System.out.println(orderVO);
		
		/*
		 * 객체나 배열을 매개변수로 전달했을때
		 * 전달받은 method에서 새로(new) 객체나 배열을 생성하게 되면
		 * 원본 객체나, 배열과는 전혀 다른 대상이 된다.
		 * 따라서 아무리 전달받은 method에서 값을 변경해도
		 * 원본은 값을 알수 없다.  
		 */
		System.out.println(ary[0]);
		pTest.non(ary);
		System.out.println(ary[0]);
		
		/*
		 * wrapper(String, Integer, Long......등등) 들은 
		 * primitive 변수와 성질이 닮았다.
		 */
		Integer i = 37;
		System.out.println(i);
		pTest.add(i);
		System.out.println(i);
		
		pTest.non(sim);
		System.out.println(sim);
		
	}
	
	
}
