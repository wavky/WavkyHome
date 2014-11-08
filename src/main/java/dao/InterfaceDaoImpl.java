/**
 * 2014年11月6日 下午12:41:31
 */
package dao;

import bean.Interface;
import dao.interfaces.InterfaceDao;

/**
 * 
 * 
 * @author wavky.wand
 *
 */
public class InterfaceDaoImpl extends BaseDaoImpl<Interface> implements InterfaceDao {

	@Override
	public Class<Interface> getEntityClass() {
		return Interface.class;
	}

}
