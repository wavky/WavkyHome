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
	private String interfaceUrl;
	private String interfaceRequest;
	private String interfaceResponse;
	private int targetInterfaceId;
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
	 * @return the interfaceUrl
	 */
	public String getInterfaceUrl() {
		return interfaceUrl;
	}

	/**
	 * @param interfaceUrl
	 *            the interfaceUrl to set
	 */
	public void setInterfaceUrl(String interfaceUrl) {
		this.interfaceUrl = interfaceUrl;
	}

	/**
	 * @return the interfaceRequest
	 */
	public String getInterfaceRequest() {
		return interfaceRequest;
	}

	/**
	 * @param interfaceRequest
	 *            the interfaceRequest to set
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
	 * @param interfaceResponse
	 *            the interfaceResponse to set
	 */
	public void setInterfaceResponse(String interfaceResponse) {
		this.interfaceResponse = interfaceResponse;
	}

	/**
	 * @return the targetInterfaceId
	 */
	public int getTargetInterfaceId() {
		return targetInterfaceId;
	}

	/**
	 * @param targetInterfaceId
	 *            the targetInterfaceId to set
	 */
	public void setTargetInterfaceId(int targetInterfaceId) {
		this.targetInterfaceId = targetInterfaceId;
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

	/**
	 * 列出目标interface信息
	 * 
	 * @return
	 * @throws Exception
	 */
	public String listTargetInterfaceInfo() throws Exception {
		Interface mInterface = interfaceDao.get(targetInterfaceId);
		if (mInterface != null) {
			description = mInterface.getDescription();
			interfaceUrl = mInterface.getUrl();
			interfaceRequest = mInterface.getRequest();
			interfaceResponse = mInterface.getResponse();
			return SUCCESS;
		}
		return ERROR;
	}

	/**
	 * 保存project
	 * 
	 * @return
	 * @throws Exception
	 */
	public String saveInterface() throws Exception {
		if (targetInterfaceId == 0) {
			return saveNewInterface();
		} else {
			return updateInterface();
		}
	}

	private String saveNewInterface() throws Exception {
		Interface newInterface = new Interface();
		newInterface.setDescription(description);
		newInterface.setUrl(interfaceUrl);
		newInterface.setRequest(interfaceRequest);
		newInterface.setResponse(interfaceResponse);
		newInterface.setAddTime(System.currentTimeMillis());
		if (interfaceDao.save(newInterface))
			return SUCCESS;
		else
			return ERROR;
	}

	/**
	 * 更新interface信息
	 * 
	 * @return
	 * @throws Exception
	 */
	private String updateInterface() {
		Interface mInterface = interfaceDao.get(targetInterfaceId);
		if (mInterface != null) {
			mInterface.setDescription(description);
			mInterface.setUrl(interfaceUrl);
			mInterface.setRequest(interfaceRequest);
			mInterface.setResponse(interfaceResponse);
		}
		if (interfaceDao.save(mInterface))
			return SUCCESS;
		else
			return ERROR;
	}

	public String deleteInterface() throws Exception {
		Interface deleteInterface = interfaceDao.get(targetInterfaceId);
		if (deleteInterface != null) {
			if (interfaceDao.delete(deleteInterface))
				return SUCCESS;
			else
				return ERROR;
		}
		return ERROR;
	}
}
