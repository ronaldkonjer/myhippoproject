<%@ include file="/WEB-INF/jsp/include/imports.jsp" %>

<%--@elvariable id="document" type="nl.hanos.solutions.beans.FaqItem"--%>
<div class="has-edit-button">
<hst:cmseditlink hippobean="${requestScope.document}"/>
<h1><c:out value="${requestScope.document.question}"/></h1>
<hst:html hippohtml="${requestScope.document.answer}"/>
</div>
