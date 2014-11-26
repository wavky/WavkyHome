/**
 * 2014年11月6日 下午12:29:22
 */
package dao;

import java.io.Serializable;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import dao.interfaces.BaseDao;

/**
 * 
 * 
 * @author wavky.wand
 *
 */
@Transactional
public abstract class BaseDaoImpl<T> extends HibernateDaoSupport implements BaseDao<T> {

	/* (non-Javadoc)
	 * @see dao.BaseDao#getEntityClass()
	 */
	public abstract Class<T> getEntityClass();

	/* (non-Javadoc)
	 * @see dao.BaseDao#get(java.io.Serializable)
	 */
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public T get(Serializable id) {
		return getHibernateTemplate().get(getEntityClass(), id);
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<T> getAll(){
		return getHibernateTemplate().loadAll(getEntityClass());
	}

	/* (non-Javadoc)
	 * @see dao.BaseDao#save(T)
	 */
	public boolean save(T entity) {
		try {
			getHibernateTemplate().saveOrUpdate(entity);
		} catch (DataAccessException e) {
			throw e;
		}
		return true;
	}

	/* (non-Javadoc)
	 * @see dao.BaseDao#delete(T)
	 */
	public boolean delete(T entity) {
		try {
			getHibernateTemplate().delete(entity);
		} catch (DataAccessException e) {
			throw e;
		}
		return true;
	}
}
