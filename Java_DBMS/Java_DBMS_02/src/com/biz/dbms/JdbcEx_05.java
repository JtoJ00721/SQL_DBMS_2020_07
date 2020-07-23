package com.biz.dbms;

import java.sql.SQLException;
import java.util.List;
import java.util.Scanner;

import com.biz.dbms.config.Lines;
import com.biz.dbms.domain.OrderVO;
import com.biz.dbms.service.OrderInput;
import com.biz.dbms.service.OrderService;
import com.biz.dbms.service.OrderServiceImplV1;
import com.biz.dbms.service.OrderView;

public class JdbcEx_05 {
	
	public static void main(String[] args) {
		
		OrderService oService = new OrderServiceImplV1();
		OrderInput oInput = new OrderInput();
		OrderView oView = new OrderView();
		
		Scanner scan = new Scanner(System.in);
		
		while(true) {
			System.out.println(Lines.getDLine(50));
			System.out.println("빙빙이 쇼핑몰 주문서 관리 시스템 V1");
			System.out.println(Lines.getDLine(50));
			System.out.println("1. 주문서 리스트 보기");
			System.out.println("2. 주문서 자세히 보기");
			System.out.println("3. 주문서 입력");
			System.out.println("4. 주문서 수정");
			System.out.println("5. 주문서 삭제");
			System.out.println("q. 업무종료");
			System.out.println(Lines.getSLine(50));
			System.out.print("업무선택 >> ");
			String strMenu = scan.nextLine();
			if(strMenu.equals("q")) {
				break;
			}
			int intMenu = 0;
			try {
				intMenu = Integer.valueOf(strMenu);
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("업무는 1~5중의 숫자만 선택하세요\n입력이 다시 시작됩니다 ><");
				continue;
			}
			
				List<OrderVO> orderList;
				try {
					if(intMenu == 1) {
					orderList = oService.selectAll();
					oView.orderList(orderList);
					} else if(intMenu ==2) {
						// 전체리스트 보여주고
						orderList = oService.selectAll();
						oView.orderList(orderList);
						
						OrderVO orderVO = oInput.detailView();
						oView.orderDetailView(orderVO);
						// SEQ 입력받고
						// detailView
					} else if(intMenu == 3) {
						if(!oInput.orderInsert()) {
							// 입력이 완료된 후 입력이 잘 되었는지 리스트로 확인
							break;
						}
						orderList = oService.selectAll();
						oView.orderList(orderList);
					} else if(intMenu ==4) {
						orderList = oService.selectAll();
						oView.orderList(orderList);
						if(!oInput.orderUpdate()) {
							break;
						}
					} else if (intMenu == 5) {
						// 삭제를 위한 리스트 보여주기
						orderList = oService.selectAll();
						oView.orderList(orderList);
						if(!oInput.orderDelete()) {
							break;
						}
						
						// 삭제후 확인을 위한 리스트 보여주기
						orderList = oService.selectAll();
						oView.orderList(orderList);
					} else {
						System.out.println("업무는 1 ~ 5 중에 선택해 주세요 ><");
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			
		}
		System.out.println("\n\n종료지롱 ><");
	}
	
	
}
