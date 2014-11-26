/**
 * 2014年11月6日 下午12:39:40
 */
package dao.interfaces;

import bean.User;

/**
 * 
 * 
 * @author wavky.wand
 *
 */
public interface UserDao extends BaseDao<User> {

	/**
	 * 根据用户名搜索用户
	 * 
	 * @param name
	 * @return 不存在时返回null
	 */
	public abstract User get(String name);
}
