/**
 * 2014年10月25日 上午10:51:51
 */
package action;

import org.apache.struts2.ServletActionContext;

import bean.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.interfaces.UserDao;

/**
 * 提供登陆相关操作
 * 
 * @author wavky.wand
 *
 */
public class LoginAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String name;
	private String password;
	private UserDao userDao;
	
	/**
	 * 记录上一个页面
	 */
	private String refererUrl;

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password
	 *            the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the userDao
	 */
	public UserDao getUserDao() {
		return userDao;
	}

	/**
	 * @param userDao the userDao to set
	 */
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	/**
	 * @return the refererUrl
	 */
	public String getRefererUrl() {
		return refererUrl;
	}

	/**
	 * @param refererUrl the refererUrl to set
	 */
	public void setRefererUrl(String refererUrl) {
		this.refererUrl = refererUrl;
	}

	@Override
	public String execute() throws Exception {
		setRefererUrl(ServletActionContext.getRequest().getHeader("referer"));
		ActionContext ac = ActionContext.getContext();
		ac.getSession().put("refererUrl", getRefererUrl());
		return SUCCESS;
	}

	public String login() throws Exception {
		ActionContext ac = ActionContext.getContext();
		User user = getUserDao().get(name);
		if(user==null){
			ac.getSession().put("isMaster", false);
			return ERROR;
		}
		if (user.getPassword().equals(getPassword())) {
			ac.getSession().put("isMaster", true);
			ac.getSession().put("master", user);
			return SUCCESS;
		} else {
			ac.getSession().put("isMaster", false);
			return ERROR;
		}
	}

	public String logout() throws Exception {
		ActionContext ac = ActionContext.getContext();
		ac.getSession().put("isMaster", false);
		ac.getSession().remove("master");
		setRefererUrl(ServletActionContext.getRequest().getHeader("referer"));
		return SUCCESS;
	}
}
