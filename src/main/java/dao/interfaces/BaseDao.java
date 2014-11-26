/**
 * 2014年11月6日 下午3:19:01
 */
package dao.interfaces;

import java.io.Serializable;
import java.util.List;

/**
 * 
 * 
 * @author wavky.wand
 *
 * @param <T>
 */
public interface BaseDao<T> {

	/**
	 * 返回处理实体类Class对象
	 * 
	 * @return
	 */
	public abstract Class<T> getEntityClass();

	/**
	 * 获取该id的对象
	 * 
	 * @param id
	 * @return 不存在时返回null
	 */
	public abstract T get(Serializable id);

	/**
	 * 加载所有记录
	 * @return
	 * 没有数据记录时返回空的list对象
	 */
	public List<T> getAll();
	
	/**
	 * 保存或更新一个实体记录
	 * 
	 * @param entity
	 * @return 成功时返回true，失败时抛出 DataAccessException
	 */
	public abstract boolean save(T entity);

	/**
	 * 删除一个实体记录
	 * 
	 * @param entity
	 * @return 成功时返回true，失败时抛出 DataAccessException
	 */
	public abstract boolean delete(T entity);

}