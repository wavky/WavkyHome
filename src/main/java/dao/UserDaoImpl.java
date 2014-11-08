/**
 * 2014年11月6日 下午12:41:31
 */
package dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import bean.User;
import dao.interfaces.UserDao;

/**
 * 
 * 
 * @author wavky.wand
 *
 */
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {


	@Override
	public Class<User> getEntityClass() {
		return User.class;
	}
	
	public User get(String name){
		DetachedCriteria criteria = DetachedCriteria.forClass(getEntityClass());
		criteria.add(Restrictions.eq("name", name));
		@SuppressWarnings("unchecked")
		List<User> userList =  (List<User>) getHibernateTemplate().findByCriteria(criteria);
		if(userList.isEmpty()){
			return null;
		}else{
			return userList.get(0);
		}
	}
	
}
