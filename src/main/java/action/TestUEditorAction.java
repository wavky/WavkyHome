/**
 * 2014年11月27日 下午5:25:03
 */
package action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 
 * 
 * @author wavky.wand
 *
 */
public class TestUEditorAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private String editorText;

	/**
	 * @return the editorText
	 */
	public String getEditorText() {
		return editorText;
	}

	/**
	 * @param editorText the editorText to set
	 */
	public void setEditorText(String editorText) {
		this.editorText = editorText;
	}
	
	/* (non-Javadoc)
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	@Override
	public String execute() throws Exception {
		System.out.println(editorText);
		return super.execute();
	}
}
