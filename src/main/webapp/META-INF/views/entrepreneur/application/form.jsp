<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form readonly="true">
	<acme:form-textbox code="entrepreneur.application.form.label.ticket" path="ticket"/>
	<acme:form-moment code="entrepreneur.application.form.label.creationdate" path="creationdate"/>
	<acme:form-textbox code="entrepreneur.application.form.label.statement" path="statement"/>
	<acme:form-money code="entrepreneur.application.form.label.offer" path="offer"/>
	<acme:form-textbox code="entrepreneur.application.form.label.investor" path="investor-firm"/>
	<acme:form-textbox code="entrepreneur.application.form.label.investment" path="investment-title"/>
	
	
	
	
	<acme:form-return code="entrepreneur.investment.form.button.return"/>
</acme:form>