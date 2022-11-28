package com.hfashion.controller;

import com.hfashion.controller.action.Action;
import com.hfashion.controller.action.CartAction;
import com.hfashion.controller.action.CartDelAction;
import com.hfashion.controller.action.CartInsertAction;
import com.hfashion.controller.action.JoinAction;
import com.hfashion.controller.action.LoginAction;
import com.hfashion.controller.action.LoginFormAction;
import com.hfashion.controller.action.LogoutAction;
import com.hfashion.controller.action.MainAction;
import com.hfashion.controller.action.ProductDetailAction;
import com.hfashion.controller.action.ProductList;
import com.hfashion.controller.action.ReviewDetailAction;
import com.hfashion.controller.action.SearchAction;
import com.hfashion.controller.action.SearchIDFormAction;
import com.hfashion.controller.action.SignUpAction;


public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();
	public ActionFactory() {
		super();
	}
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory : " + command);
		if(command==null) {
			action = new MainAction();
		} else if(command.equals("detail")) {
			action = new ProductDetailAction();
		}else if(command.equals("productList")) {
			action = new ProductList();
		}else if (command.equals("signup")) {
			action = new SignUpAction();
		}else if (command.equals("join")) {
			action = new JoinAction();
		}else if(command.equals("loginform")) {
			action = new LoginFormAction();
		}else if(command.equals("reviewdetail")) {
			action = new ReviewDetailAction();
		}else if(command.equals("login")) {
			action = new LoginAction();
		}else if(command.equals("logout")) {
			action = new LogoutAction();
		}else if(command.equals("searchIdForm")) {
			action = new SearchIDFormAction();
		}else if(command.equals("searchID")) {
			action = new SearchAction();
		}else if(command.equals("cart")) {
			action = new CartAction();
		}else if(command.equals("addCart")) {
			action = new CartInsertAction();
		}else if(command.equals("delCart")) {
			action = new CartDelAction();
		}
		
		return action;
	}
}
