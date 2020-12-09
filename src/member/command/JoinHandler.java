package member.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.JoinRequest;
import mvc.command.CommandHandler;

public class JoinHandler implements CommandHandler {
	private static final String FORM_VIEW = "joinForm";

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) {

		JoinRequest joinReq = new JoinRequest();
		joinReq.setId(req.getParameter("id"));
		joinReq.setName(req.getParameter("name"));
		joinReq.setPw(req.getParameter("pw"));
		joinReq.setConfirmPw(req.getParameter("confirmPw"));

		
		 Map<String, Boolean> errors = new HashMap<>(); 
		 req.setAttribute("errors",errors);
		
		 joinReq.validate(errors);
		 
		 if(!errors.isEmpty()) { 
		 return FORM_VIEW; 
		 } 
		 
		 /*try { 
		 *joinService.join(joinReq);
		 * return "joinSuccess"; 
		 * } catch (DuplicateIdException e) {
		 * errors.put("duplicateId", Boolean.TRUE); 
		 * return FORM_VIEW;
		 *  }
		 */
		return null;
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		return FORM_VIEW;
	}

}