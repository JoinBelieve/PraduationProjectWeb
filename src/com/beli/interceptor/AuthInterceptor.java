package com.beli.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class AuthInterceptor extends AbstractInterceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
//		得到Session要获得上下文
		ActionContext context = ActionContext.getContext();
		Map<String, Object> session = context.getSession();
		// TODO Auto-generated method stub
		String actionName = invocation.getProxy().getActionName();
//		if (actionName.equals("loginUserAction")||actionName.equals("registerUserAction")
//				||actionName.equals("UserRegisterActionByJson")||actionName.equals("UserLoginActionByJson")
//				||actionName.equals("addMessageActionByJson")) {
//			
//		}
		if (actionName.equals("addMessageAction")) {
			if (session.get("loginUserName") != null) {
				//			有用户登录
				System.out.println("拦截器说:有用户登录");
				String result = invocation.invoke();
				return result;
			}else {//说明用户没登录
				System.out.println("拦截器说:用户没登录,我要拦截它们,要进行登录哦");
				return "login";
			}
		}else {
			System.out.println("拦截器说:不是我要拦截的ACTION,放行...");
			return invocation.invoke();
		}
			
		
	}

}
