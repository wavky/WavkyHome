/**
 * 2014年11月10日 下午1:35:14
 */
package bean;

/**
 * 
 * 
 * @author wavky.wand
 *
 */
public class IpAddress {
	private String country;
	private String area;
	private String province;
	private String city;
	private String isp;
	private String ip;

	/**
	 * @return the country
	 */
	public String getCountry() {
		return country;
	}

	/**
	 * @param country
	 *            the country to set
	 */
	public void setCountry(String country) {
		this.country = country;
	}

	/**
	 * @return the area
	 */
	public String getArea() {
		return area;
	}

	/**
	 * @param area
	 *            the area to set
	 */
	public void setArea(String area) {
		this.area = area;
	}

	/**
	 * @return the province
	 */
	public String getProvince() {
		return province;
	}

	/**
	 * @param province
	 *            the province to set
	 */
	public void setProvince(String province) {
		this.province = province;
	}

	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}

	/**
	 * @param city
	 *            the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}

	/**
	 * @return the isp
	 */
	public String getIsp() {
		return isp;
	}

	/**
	 * @param isp
	 *            the isp to set
	 */
	public void setIsp(String isp) {
		this.isp = isp;
	}

	/**
	 * @return the ip
	 */
	public String getIp() {
		return ip;
	}

	/**
	 * @param ip
	 *            the ip to set
	 */
	public void setIp(String ip) {
		this.ip = ip;
	}

	private String getString(String str) {
		if (str == null)
			return "";
		return str;
	}

	@Override
	public String toString() {
		return getString(country) + getString(area) + getString(province)
				+ getString(city) + getString(isp) + getString(ip);
	}
}
