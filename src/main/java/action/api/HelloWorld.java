/**
 * 2014年11月10日 上午9:23:42
 */
package action.api;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.apache.struts2.ServletActionContext;

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

	private static final SimpleDateFormat sdf = new SimpleDateFormat(
			"yyyy-MM-dd HH:mm:ss:S", Locale.CHINA);

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

	@Override
	public String execute() throws Exception {
		status = "OK!!!";
		yourIP = ServletActionContext.getRequest().getRemoteAddr();
		timestamp = "A.D. " + sdf.format(new Date());
		return SUCCESS;
	}
}
