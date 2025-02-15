package com.hfashion.controller;

import com.hfashion.controller.action.Action;
import com.hfashion.controller.action.CancleOrderAction;
import com.hfashion.controller.action.CartAction;
import com.hfashion.controller.action.CartCntUpdateAction;
import com.hfashion.controller.action.CartDelAction;
import com.hfashion.controller.action.CartDelAllAction;
import com.hfashion.controller.action.CartListAllAction;
import com.hfashion.controller.action.CartSelUpdateAction;
import com.hfashion.controller.action.ConfirmEmailAction;
import com.hfashion.controller.action.ConfirmIDAction;
import com.hfashion.controller.action.GetOrderListAction;
import com.hfashion.controller.action.GoodInsertAction;
import com.hfashion.controller.action.JoinAction;
import com.hfashion.controller.action.JoinSuccessAction;
import com.hfashion.controller.action.ListOrderFormAction;
import com.hfashion.controller.action.LoginAction;
import com.hfashion.controller.action.LoginFormAction;
import com.hfashion.controller.action.LogoutAction;
import com.hfashion.controller.action.MainAction;
import com.hfashion.controller.action.MemberOutAction;
import com.hfashion.controller.action.MemberOutFormAction;
import com.hfashion.controller.action.MypageFormAction;
import com.hfashion.controller.action.OrderAction;
import com.hfashion.controller.action.OrderCompleteAction;
import com.hfashion.controller.action.ProductBestAction;
import com.hfashion.controller.action.ProductBestSortAction;
import com.hfashion.controller.action.ProductDetailAction;
import com.hfashion.controller.action.ProductListAction;
import com.hfashion.controller.action.ProductSortAction;
import com.hfashion.controller.action.PwConfirmFormAction;
import com.hfashion.controller.action.ReviewDetailAction;
import com.hfashion.controller.action.ReviewListAction;
import com.hfashion.controller.action.ReviewSearchAction;
import com.hfashion.controller.action.ReviewWriteAction;
import com.hfashion.controller.action.ReviewWriteFormAction;
import com.hfashion.controller.action.SearchIDAction;
import com.hfashion.controller.action.SearchIDFormAction;
import com.hfashion.controller.action.SearchPWAction;
import com.hfashion.controller.action.SearchPWFormAction;
import com.hfashion.controller.action.SignUpAction;
import com.hfashion.controller.action.UpdateFormAction;
import com.hfashion.controller.action.UpdatePWAction;

/*
 * 공동 작성
 * */
public class ActionFactory {
	
	/*
	 * 기능 :  
	 * */
	private static ActionFactory instance = new ActionFactory();
	public ActionFactory() {
		super();
	}
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		if(command==null) {
			action = new MainAction();
		} else if(command.equals("detail")) {
			action = new ProductDetailAction();
		}else if(command.equals("productList")) {
			action = new ProductListAction();
		}else if (command.equals("signup")) {
			action = new SignUpAction();
		}else if (command.equals("join")) {
			action = new JoinAction();
		}else if(command.equals("loginform")) {
			action = new LoginFormAction();
		}else if(command.equals("reviewdetail")) {
			action = new ReviewDetailAction();
		}else if(command.equals("reviewlist")) {
			action = new ReviewListAction();
		}else if(command.equals("reviewwriteform")) {
			action = new ReviewWriteFormAction();
		}else if(command.equals("mypage_reviewwrite")) {
			action = new ReviewWriteAction();
		}else if(command.equals("login")) {
			action = new LoginAction();
		}else if(command.equals("logout")) {
			action = new LogoutAction();
		}else if(command.equals("searchIdForm")) {
			action = new SearchIDFormAction();
		}else if(command.equals("searchID")) {
			action = new SearchIDAction();
		}else if(command.equals("order")) {
			action = new OrderAction();
		}else if(command.equals("cart")) {
			action = new CartAction();
		}else if(command.equals("delCart")) {
			action = new CartDelAction();
		}else if(command.equals("delAllCart")){
			action = new CartDelAllAction();
		}else if(command.equals("cartListAll")) {
			action = new CartListAllAction();
		}else if(command.equals("cartSelUpdate")) {
			action = new CartSelUpdateAction();
		}else if(command.equals("cartCntUpdate")) {
			action = new CartCntUpdateAction();
		}else if(command.equals("mypage")) {
			action = new MypageFormAction();
		}else if(command.equals("confirmID")) {
			action = new ConfirmIDAction();
		}else if(command.equals("mypage_searchOrder")) {
			action = new ListOrderFormAction();
		}else if (command.equals("mypage_searchPeriod")) {
			action = new GetOrderListAction();
		}else if (command.equals("productSort")) {
			action = new ProductSortAction();
		}else if (command.equals("mypage_pwConfirmpage")) {
			action = new PwConfirmFormAction();
		}else if (command.equals("mypage_updateForm")) {
			action = new UpdateFormAction();
		}else if (command.equals("updatePW")) {
			action = new UpdatePWAction();
		}else if (command.equals("mypage_OutForm")) {
			action = new MemberOutFormAction();
		}else if (command.equals("mypage_sucession")) {
			action = new MemberOutAction();
		}else if (command.equals("joinsuccess")) {
			action = new JoinSuccessAction();
		}else if(command.equals("goodinsert")) {
			action = new GoodInsertAction();
		}else if(command.equals("orderComplete")) {
			action = new OrderCompleteAction();
		}else if (command.equals("reviewSearch")) {
			action = new ReviewSearchAction();
		}else if (command.equals("best")) {
			action = new ProductBestAction();
		}else if (command.equals("bestSort")) {
			action = new ProductBestSortAction();
		}else if(command.equals("confirmEmail")) {
			action = new ConfirmEmailAction();
		}else if(command.equals("orderCancle")) {
			action = new CancleOrderAction();
		}else if(command.equals("searchPwForm")) {
			action = new SearchPWFormAction();
		}else if(command.equals("searchPW")) {
			action = new SearchPWAction();
		}
		return action;
	}
}
