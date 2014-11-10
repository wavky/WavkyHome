/**
 * 2014年11月10日 下午2:35:30
 */
package util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 原始Unicode编码解码器（对应 \ uxxxx 类型编码）
 * 
 * @author wavky.wand
 *
 */
public class UnicodeCoder {

	static final Pattern reUnicode = Pattern.compile("\\\\u([0-9a-zA-Z]{4})");

	public static String decode(String s) {
	    Matcher m = reUnicode.matcher(s);
	    StringBuffer sb = new StringBuffer(s.length());
	    while (m.find()) {
	        m.appendReplacement(sb,
	                Character.toString((char) Integer.parseInt(m.group(1), 16)));
	    }
	    m.appendTail(sb);
	    return sb.toString();
	}
	
	public static String encode(String s) {
	    StringBuilder sb = new StringBuilder(s.length() * 3);
	    for (char c : s.toCharArray()) {
	        if (c < 256) {
	            sb.append(c);
	        } else {
	            sb.append("\\u");
	            sb.append(Character.forDigit((c >>> 12) & 0xf, 16));
	            sb.append(Character.forDigit((c >>> 8) & 0xf, 16));
	            sb.append(Character.forDigit((c >>> 4) & 0xf, 16));
	            sb.append(Character.forDigit((c) & 0xf, 16));
	        }
	    }
	    return sb.toString();
	}
}
