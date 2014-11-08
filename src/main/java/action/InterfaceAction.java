/**
 * 2014年10月25日 上午10:51:51
 */
package action;

import java.util.List;

import bean.Interface;

import com.opensymphony.xwork2.ActionSupport;

import dao.interfaces.InterfaceDao;

/**
 * 
 * 
 * @author wavky.wand
 *
 */
public class InterfaceAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String description;
	private String interfaceBody;
	private String interfaceRequest;
	private String interfaceResponse;
	private int deleteInterfaceId;
	private InterfaceDao interfaceDao;
	private List<Interface> interfaceList;

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description
	 *            the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	
	/**
	 * @return the interfaceBody
	 */
	public String getInterfaceBody() {
		return interfaceBody;
	}

	/**
	 * @param interfaceBody the interfaceBody to set
	 */
	public void setInterfaceBody(String interfaceBody) {
		this.interfaceBody = interfaceBody;
	}

	/**
	 * @return the interfaceRequest
	 */
	public String getInterfaceRequest() {
		return interfaceRequest;
	}

	/**
	 * @param interfaceRequest the interfaceRequest to set
	 */
	public void setInterfaceRequest(String interfaceRequest) {
		this.interfaceRequest = interfaceRequest;
	}

	/**
	 * @return the interfaceResponse
	 */
	public String getInterfaceResponse() {
		return interfaceResponse;
	}

	/**
	 * @param interfaceResponse the interfaceResponse to set
	 */
	public void setInterfaceResponse(String interfaceResponse) {
		this.interfaceResponse = interfaceResponse;
	}

	/**
	 * @return the deleteInterfaceId
	 */
	public int getDeleteInterfaceId() {
		return deleteInterfaceId;
	}

	/**
	 * @param deleteInterfaceId
	 *            the deleteInterfaceId to set
	 */
	public void setDeleteInterfaceId(int deleteInterfaceId) {
		this.deleteInterfaceId = deleteInterfaceId;
	}

	/**
	 * @return the interfaceDao
	 */
	public InterfaceDao getInterfaceDao() {
		return interfaceDao;
	}

	/**
	 * @param interfaceDao
	 *            the interfaceDao to set
	 */
	public void setInterfaceDao(InterfaceDao interfaceDao) {
		this.interfaceDao = interfaceDao;
	}

	/**
	 * @return the interfaceList
	 */
	public List<Interface> getInterfaceList() {
		return interfaceList;
	}

	/**
	 * @param interfaceList
	 *            the interfaceList to set
	 */
	public void setInterfaceList(List<Interface> interfaceList) {
		this.interfaceList = interfaceList;
	}

	@Override
	public String execute() throws Exception {
		listInterface();
		return super.execute();
	}

	public String listInterface() throws Exception {
		interfaceList = interfaceDao.getAll();
		return SUCCESS;
	}

	public String addInterface() throws Exception {
		Interface newInterface = new Interface();
		newInterface.setDescription(description);
		newInterface.setBody(interfaceBody);
		newInterface.setRequest(interfaceRequest);
		newInterface.setResponse(interfaceResponse);
		newInterface.setAddTime(System.currentTimeMillis());
		if (interfaceDao.save(newInterface))
			return SUCCESS;
		else
			return ERROR;
	}

	public String deleteInterface() throws Exception {
		Interface deleteInterface = interfaceDao.get(deleteInterfaceId);
		if (deleteInterface != null) {
			if (interfaceDao.delete(deleteInterface))
				return SUCCESS;
			else
				return ERROR;
		}
		return ERROR;
	}
}
