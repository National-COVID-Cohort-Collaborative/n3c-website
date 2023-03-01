<%@ include file="../_include.jsp"%>

<%-- STRAPI doesn't always populate the formats field, hence the coalesce --%>
<sql:query var="media" dataSource="jdbc/STRAPITagLib">
	select
		url,
		coalesce(((formats->>'large')::jsonb)->>'url', url) as large,
		coalesce(((formats->>'small')::jsonb)->>'url', url) as small,
		coalesce(((formats->>'medium')::jsonb)->>'url', url) as medium,
		coalesce(((formats->>'thumbnail')::jsonb)->>'url', url) as thumbnail
	from
		strapi.files
	where id = ?::int;
	<sql:param>${param.id}</sql:param>
</sql:query>
<c:forEach items="${media.rows}" var="row" varStatus="rowCounter">
	<c:choose>
		<c:when test="${param.format == 'large' }">
			<img class="${param.clss}" src="http://dora.info-science.uiowa.edu:1337${row.large}"/>
		</c:when>
		<c:when test="${param.format == 'small' }">
			<img class="${param.clss}" src="http://dora.info-science.uiowa.edu:1337${row.small}"/>
		</c:when>
		<c:when test="${param.format == 'medium' }">
			<img class="${param.clss}" src="http://dora.info-science.uiowa.edu:1337${row.medium}"/>
		</c:when>
		<c:when test="${param.format == 'thumbnail' }">
			<img class="${param.clss}" src="http://dora.info-science.uiowa.edu:1337${row.thumbnail}"/>
		</c:when>
		<c:otherwise>
			<img class="${param.clss}" src="http://dora.info-science.uiowa.edu:1337${row.url}"/>
		</c:otherwise>
	</c:choose>
	${row.jsonb_pretty}
</c:forEach>
