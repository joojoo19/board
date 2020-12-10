package article.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import auth.service.*;
import article.service.*;
import article.model.*;
import mvc.command.CommandHandler;

public class WriteArticleHandler implements CommandHandler {
	private static final String FORM_VIEW = "newSrticleForm";
	private WriteArticleService writeService = new WriteArticleService();
	
@Override
public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
	if(req.getMethod().equalsIgnoreCase("GET")) {
		return processForm(req, res);
	} else if(req.getMethod().equalsIgnoreCase("POST")) {
		return processSubmit(req, res);
	} else {
		res.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
		return null;
	}
}

private String processSubmit(HttpServletRequest req, HttpServletResponse res) {
	Map<String, Boolean> errors = new HashMap<>();
	req.setAttribute("errors", errors);
	
	User user = (User) req.getSession(false).getAttribute("authUser");
	WriteRequest writeReq = createWriteRequest(user, req);
	writeReq.validate(errors);
	
	if(!errors.isEmpty()) {
		return FORM_VIEW;
	}
	
	int newArticleNO = writeService.write(writeReq);
	req.setAttribute("newArticleNo", newArticleNo);
	
	
			

private String processForm(HttpServletRequest req, HttpServletResponse res) {
	return FORM_VIEW;
}
}
