<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form readonly="true">
	<acme:form-textbox code="entrepreneur.investment.form.label.title" path="title"/>
	<acme:form-textbox code="entrepreneur.investment.form.label.ticket" path="ticket"/>
	<acme:form-moment code="entrepreneur.investment.form.label.creationdate" path="creationdate"/>
	<acme:form-textbox code="entrepreneur.investment.form.label.kind" path="kind"/>
	<acme:form-textarea code="entrepreneur.investment.form.label.description" path="description"/>
	<acme:form-money code="entrepreneur.investment.form.label.amount" path="amount"/>
	<acme:form-url code="entrepreneur.investment.form.label.link" path="link"/>
	
		<acme:form-submit method="get" code="entrepreneur.investment.form.label.programme"
		action="/authenticated/activity/list?id=${id}&ref=${reference}" />
		
	
<br/><br/>
	
	<acme:form-return code="entrepreneur.investment.form.button.return"/>
</acme:form>