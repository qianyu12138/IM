package com.im.web.interceptor;

import com.im.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class PrivilegeInterceptor extends MethodFilterInterceptor{

	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		User u = (User) ActionContext.getContext().getSession().get("user");
		System.out.println(u);
		if(u!=null) {
			return invocation.invoke();
		}else {
			return "toLogin";
		}
	}

}
