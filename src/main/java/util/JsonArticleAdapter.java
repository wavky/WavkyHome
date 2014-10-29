/**
 * 2014年10月28日 下午4:31:44
 */
package util;

import org.json.JSONObject;

import bean.Article;

/**
 * 从JSONObject对象转换为Article对象
 * 
 * @author wavky.wand
 *
 */
public class JsonArticleAdapter {
	public static Article getArticleFrom(JSONObject articleNode){
		Article article = new Article();
		article.setTitle(articleNode.optJSONObject("title").optString("content"));
		article.setSummary(articleNode.optJSONObject("summary").optString("content"));
		article.setLinkAddr(articleNode.optJSONObject("link").optString("href"));
		article.setViews(articleNode.optInt("views"));
		article.setComments(articleNode.optInt("comments"));
		return article;
	}
}
