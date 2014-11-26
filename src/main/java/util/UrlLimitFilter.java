/**
 * 2014年11月26日 下午12:53:24
 */
package util;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.dispatcher.ng.filter.StrutsPrepareAndExecuteFilter;

/**
 * 对请求URL进行过滤限制，禁止直接访问JSP页面
 * 
 * @author wavky.wand
 *
 */
public class UrlLimitFilter extends StrutsPrepareAndExecuteFilter {
	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		String url = request.getRequestURI();
		if (url.toLowerCase().endsWith(".jsp")) {
			System.out.println("禁止直接请求jsp");
			// 禁止直接请求jsp，内部转发输出404页面，不修改URL
			request.getRequestDispatcher("/not_found.html").forward(req, res);
			// 重定向到404页面，效果与请求.html/.asp等资源时不一致
			// ((HttpServletResponse)res).sendRedirect("404");
			return;
		}
		// 调用默认过滤器分发资源
		super.doFilter(req, res, chain);
	}
}