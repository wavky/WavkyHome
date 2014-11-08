/**
 * 2014年11月6日 下午12:39:57
 */
package dao.interfaces;

import java.util.List;

import bean.Project;

/**
 * 
 * 
 * @author wavky.wand
 *
 */
public interface ProjectDao extends BaseDao<Project> {
	
	/**
	 * 按AddTime降序列出，最新加入（时间靠后）的优先
	 * @return
	 */
	public abstract List<Project> listByAddTime();
	
	/**
	 * 列出AddTime最后加入的6个
	 * @return
	 */
	public abstract List<Project> listLast6();

}
