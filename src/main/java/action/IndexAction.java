/**
 * 2014年10月25日 上午10:51:51
 */
package action;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.XML;

import util.JsonArticleAdapter;
import bean.Article;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 
 * 
 * @author wavky.wand
 *
 */
public class IndexAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private static long lastUpdateTime = 0;
	private static final int PERIOD = 15 * 60 * 1000;
	private static final int PAGE_INDEX;
	private static final int PAGE_SIZE;
	private static final String ARTICLE_LIST_UPDATE_URL;
	private static List<Article> articleList;

	static {
		PAGE_INDEX = 1;
		PAGE_SIZE = 10;
		ARTICLE_LIST_UPDATE_URL = "http://wcf.open.cnblogs.com/blog/u/wavky/posts/"
				+ PAGE_INDEX + "/" + PAGE_SIZE;
		articleList = new ArrayList<Article>();
	}

	public static List<Article> getArticleList() {
		return articleList;
	}

	/**
	 * 更新博客园的文章列表
	 * 
	 * @throws IOException
	 */
	private static synchronized void updateArticleList() throws IOException {
		if (System.currentTimeMillis() - lastUpdateTime <= PERIOD)
			return;

		String xml = getArticleListFromServer();
		if(xml.isEmpty())
			return;
		
		JSONObject jo = XML.toJSONObject(xml);
		JSONArray ja = jo.optJSONObject("feed").optJSONArray("entry");
		articleList.clear();
		for(int index = 0;index < ja.length();index++){
			Article article = JsonArticleAdapter.getArticleFrom(ja.optJSONObject(index));
			articleList.add(article);
		}
		lastUpdateTime = System.currentTimeMillis();
		LOG.info("update article list", null);
	}
	
	/**
	 * 从博客园API获取文章XML
	 * @return
	 * @throws IOException
	 */
	private static String getArticleListFromServer() throws IOException{
		StringBuilder sb = new StringBuilder();
		URL url = new URL(ARTICLE_LIST_UPDATE_URL);
		InputStreamReader isr = new InputStreamReader(url.openStream(),
				Charset.forName("UTF-8"));
		BufferedReader br = new BufferedReader(isr);
		for(String line="";line!=null;line=br.readLine()){
			sb.append(line);
		}
		br.close();
		return sb.toString().trim();
	}

	@Override
	public String execute() throws Exception {
		if (System.currentTimeMillis() - lastUpdateTime > PERIOD) {
			updateArticleList();
		}
		return super.execute();
	}
}
