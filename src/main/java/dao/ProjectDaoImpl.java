/**
 * 2014年11月6日 下午12:41:31
 */
package dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;

import bean.Project;
import dao.interfaces.ProjectDao;

/**
 * 
 * 
 * @author wavky.wand
 *
 */
public class ProjectDaoImpl extends BaseDaoImpl<Project> implements ProjectDao {

	@Override
	public Class<Project> getEntityClass() {
		return Project.class;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.interfaces.ProjectDao#listByAddTime()
	 */
	public List<Project> listByAddTime() {
		DetachedCriteria criteria = DetachedCriteria.forClass(getEntityClass());
		criteria.addOrder(Order.desc("addTime"));
		@SuppressWarnings("unchecked")
		List<Project> projectList = (List<Project>) getHibernateTemplate()
				.findByCriteria(criteria);
		return projectList;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.interfaces.ProjectDao#listTop6()
	 */
	public List<Project> listLast6() {
		DetachedCriteria criteria = DetachedCriteria.forClass(getEntityClass());
		criteria.addOrder(Order.desc("addTime"));
		@SuppressWarnings("unchecked")
		List<Project> projectList = (List<Project>) getHibernateTemplate()
				.findByCriteria(criteria, 0, 6);
		return projectList;
	}

}
