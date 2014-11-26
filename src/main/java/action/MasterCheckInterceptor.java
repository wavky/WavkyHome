/**
 * 2014年11月8日 上午11:11:53
 */
package action;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * 
 * 
 * @author wavky.wand
 *
 */
public class MasterCheckInterceptor extends AbstractInterceptor {

	private static final long serialVersionUID = 1L;

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.opensymphony.xwork2.interceptor.AbstractInterceptor#intercept(com
	 * .opensymphony.xwork2.ActionInvocation)
	 */
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {

		ActionContext ac = invocation.getInvocationContext();
		Boolean isMaster = (Boolean) ac.getSession().get("isMaster");
		if (isMaster != null && isMaster) {
			String result = invocation.invoke();
			return result;
		} else {
			return Action.LOGIN;
		}
	}

}
