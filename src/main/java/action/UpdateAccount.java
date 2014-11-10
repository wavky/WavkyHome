/**
 * 2014年11月10日 上午8:43:19
 */
package action;

import bean.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.interfaces.UserDao;

/**
 * 
 * 
 * @author wavky.wand
 *
 */
public class UpdateAccount extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String name;
	private String password;
	private UserDao userDao;

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
	 * @param userDao
	 *            the userDao to set
	 */
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public String execute() throws Exception {
		ActionContext ac = ActionContext.getContext();
		User master = (User) ac.getSession().get("master");
		name = master.getName();
		return SUCCESS;
	}

	public String update() throws Exception {
		ActionContext ac = ActionContext.getContext();
		User master = (User) ac.getSession().get("master");
		master.setName(name);
		master.setPassword(password);
		if (userDao.save(master))
			return SUCCESS;
		else
			return ERROR;
	}
}
