<%@ include file="/WEB-INF/jsp/include/imports.jsp" %>

<%--@elvariable name="item" type="nl.hanos.solutions.beans.EventsDocument"--%>
<%--@elvariable id="pageable" type="org.onehippo.cms7.essentials.components.paging.Pageable"--%>

<c:forEach var="item" items="${requestScope.pageable.items}" varStatus="status">
  <hst:link var="link" hippobean="${item}"/>
  <article class="has-edit-button">
    <hst:cmseditlink hippobean="${item}"/>
    <h3><a href="${link}"><c:out value="${item.title}"/></a></h3>
    <c:if test="${hst:isReadable(item, 'date.time')}">
      <p>
        <fmt:formatDate value="${item.date.time}" type="both" dateStyle="medium" timeStyle="short"/>
      </p>
    </c:if>
    <c:if test="${hst:isReadable(item, 'enddate.time')}">
      <p>
        <fmt:formatDate value="${item.enddate.time}" type="both" dateStyle="medium" timeStyle="short"/>
      </p>
    </c:if>
    <p><c:out value="${item.location}"/></p>
  </article>
</c:forEach>
<c:if test="${requestScope.cparam.showPagination}">
  <%@ include file="/WEB-INF/jsp/include/pagination.jsp" %>
</c:if>
<%--@elvariable id="editMode" type="java.lang.Boolean"--%>
<c:if test="${requestScope.editMode and empty requestScope.pageable}">
  <img src="<hst:link path='/images/essentials/catalog-component-icons/events-list.png'/>"> Click to edit Event List
</c:if>