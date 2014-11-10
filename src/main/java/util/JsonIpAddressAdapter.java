/**
 * 2014年11月10日 下午1:25:07
 */
package util;

import org.json.JSONObject;

import bean.IpAddress;

/**
 * 
 * 
 * @author wavky.wand
 *
 */
public class JsonIpAddressAdapter {

	/**
	 * 来自淘宝ip接口http://ip.taobao.com/instructions.php
	 * @param jsonIp
	 * @return
	 */
	public static IpAddress getIpAddressForm(JSONObject jsonIp) {
		IpAddress ipAddress = new IpAddress();
		int mark = jsonIp.optInt("code");
		if (mark != 0)
			// 失败
			return ipAddress;
		jsonIp = jsonIp.optJSONObject("data");
		ipAddress.setCountry(jsonIp.optString("country"));
		ipAddress.setArea(jsonIp.optString("area"));
		ipAddress.setProvince(jsonIp.optString("region"));
		ipAddress.setCity(jsonIp.optString("city"));
		ipAddress.setIsp(jsonIp.optString("isp"));
		ipAddress.setIp(jsonIp.optString("ip"));
		return ipAddress;
	}
}
