/**
 * 2014年11月10日 上午9:23:42
 */
package action.api;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.apache.struts2.ServletActionContext;
import org.json.JSONObject;

import util.JsonIpAddressAdapter;
import util.UnicodeCoder;
import bean.IpAddress;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 
 * 
 * @author wavky.wand
 *
 */
public class HelloWorld extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String yourIP;
	private String status;
	private String timestamp;
	private String physicalAddress;

	private static final SimpleDateFormat sdf = new SimpleDateFormat(
			"yyyy-MM-dd HH:mm:ss:S", Locale.CHINA);
	private static final String GetIpPhysicalAddressUrl = "http://ip.taobao.com/service/getIpInfo.php?ip=";

	/**
	 * @return the yourIP
	 */
	public String getYourIP() {
		return yourIP;
	}

	/**
	 * @param yourIP
	 *            the yourIP to set
	 */
	public void setYourIP(String yourIP) {
		this.yourIP = yourIP;
	}

	/**
	 * @return the status
	 */
	public String getStatus() {
		return status;
	}

	/**
	 * @param status
	 *            the status to set
	 */
	public void setStatus(String status) {
		this.status = status;
	}

	/**
	 * @return the timestamp
	 */
	public String getTimestamp() {
		return timestamp;
	}

	/**
	 * @param timestamp
	 *            the timestamp to set
	 */
	public void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}

	/**
	 * @return the physicalAddress
	 */
	public String getPhysicalAddress() {
		return physicalAddress;
	}

	/**
	 * @param physicalAddress the physicalAddress to set
	 */
	public void setPhysicalAddress(String physicalAddress) {
		this.physicalAddress = physicalAddress;
	}

	@Override
	public String execute() throws Exception {
		status = "OK!!!";
		yourIP = ServletActionContext.getRequest().getRemoteAddr();
		physicalAddress = getPhysicalAddressFromServer(yourIP).toString();
		timestamp = "A.D. " + sdf.format(new Date());
		return SUCCESS;
	}
	
	private IpAddress getPhysicalAddressFromServer(String ip) throws Exception{
		StringBuilder sb = new StringBuilder();
		URL url = new URL(GetIpPhysicalAddressUrl+ip);
		InputStreamReader isr = new InputStreamReader(url.openStream(),
				Charset.forName("UTF-8"));
		BufferedReader br = new BufferedReader(isr);
		for(String line="";line!=null;line=br.readLine()){
			sb.append(line);
		}
		br.close();
		String jsonPhysicalAddress = UnicodeCoder.decode(sb.toString().trim());
		JSONObject jo = new JSONObject(jsonPhysicalAddress);
		return JsonIpAddressAdapter.getIpAddressForm(jo);
	}
}
