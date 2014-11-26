/**
 * 2014年11月6日 上午10:42:26
 */
package bean;

/**
 * 
 * 
 * @author wavky.wand
 *
 */
public class Project {

	private Integer id;
	private String title;
	private String type;
	private String linkAddr;
	private String snapshotAddr;
	private Long addTime;

	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * @param title
	 *            the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}

	/**
	 * @param type
	 *            the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}

	/**
	 * @return the linkAddr
	 */
	public String getLinkAddr() {
		return linkAddr;
	}

	/**
	 * @param linkAddr
	 *            the linkAddr to set
	 */
	public void setLinkAddr(String linkAddr) {
		this.linkAddr = linkAddr;
	}

	/**
	 * @return the snapshotAddr
	 */
	public String getSnapshotAddr() {
		return snapshotAddr;
	}

	/**
	 * @param snapshotAddr
	 *            the snapshotAddr to set
	 */
	public void setSnapshotAddr(String picAddr) {
		this.snapshotAddr = picAddr;
	}

	/**
	 * @return the addTime
	 */
	public Long getAddTime() {
		return addTime;
	}

	/**
	 * @param addTime
	 *            the addTime to set
	 */
	public void setAddTime(Long addTime) {
		this.addTime = addTime;
	}
}
