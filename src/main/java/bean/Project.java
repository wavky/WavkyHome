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
	private String snapshotAddr;

	private String sourceLinkAddr;
	private String projectFileAddr;
	private Integer download;
	private String version;
	private Float price;
	private String introduction;

	private Long addTime;
	private Long releaseDate;
	private Long updateTime;

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
	 * @return the snapshotAddr
	 */
	public String getSnapshotAddr() {
		return snapshotAddr;
	}

	/**
	 * @param snapshotAddr
	 *            the snapshotAddr to set
	 */
	public void setSnapshotAddr(String snapshotAddr) {
		this.snapshotAddr = snapshotAddr;
	}

	/**
	 * @return the sourceLinkAddr
	 */
	public String getSourceLinkAddr() {
		return sourceLinkAddr;
	}

	/**
	 * @param sourceLinkAddr
	 *            the sourceLinkAddr to set
	 */
	public void setSourceLinkAddr(String sourceLinkAddr) {
		this.sourceLinkAddr = sourceLinkAddr;
	}

	/**
	 * @return the projectFileAddr
	 */
	public String getProjectFileAddr() {
		return projectFileAddr;
	}

	/**
	 * @param projectFileAddr
	 *            the projectFileAddr to set
	 */
	public void setProjectFileAddr(String projectFileAddr) {
		this.projectFileAddr = projectFileAddr;
	}

	public Integer getDownload() {
		return download;
	}

	public void setDownload(Integer download) {
		this.download = download;
	}

	/**
	 * @return the version
	 */
	public String getVersion() {
		return version;
	}

	/**
	 * @param version
	 *            the version to set
	 */
	public void setVersion(String version) {
		this.version = version;
	}

	/**
	 * @return the price
	 */
	public Float getPrice() {
		return price;
	}

	/**
	 * @param price
	 *            the price to set
	 */
	public void setPrice(Float price) {
		this.price = price;
	}

	/**
	 * @return the introduction
	 */
	public String getIntroduction() {
		return introduction;
	}

	/**
	 * @param introduction
	 *            the introduction to set
	 */
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
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

	/**
	 * @return the releaseDate
	 */
	public Long getReleaseDate() {
		return releaseDate;
	}

	/**
	 * @param releaseDate
	 *            the releaseDate to set
	 */
	public void setReleaseDate(Long releaseDate) {
		this.releaseDate = releaseDate;
	}

	/**
	 * @return the updateTime
	 */
	public Long getUpdateTime() {
		return updateTime;
	}

	/**
	 * @param updateTime
	 *            the updateTime to set
	 */
	public void setUpdateTime(Long updateTime) {
		this.updateTime = updateTime;
	}

}
