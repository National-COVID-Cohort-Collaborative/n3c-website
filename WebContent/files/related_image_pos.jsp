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
		strapi.files,
		strapi.files_related_morphs
	where files.id=files_related_morphs.file_id
	  and related_type = ?
	  and field = ?
	  and related_id = ?::int
	  and files_related_morphs.order = ?::int
	 ;
	<sql:param>${param.type}</sql:param>
	<sql:param>${param.field}</sql:param>
	<sql:param>${param.id}</sql:param>
	<sql:param>${param.pos}</sql:param>
</sql:query>
<c:forEach items="${media.rows}" var="row" varStatus="rowCounter">
	<c:choose>
		<c:when test="${param.format == 'large' }">
			<img src="http://dora.info-science.uiowa.edu:1337${row.large}"/>
		</c:when>
		<c:when test="${param.format == 'small' }">
			<img src="http://dora.info-science.uiowa.edu:1337${row.small}"/>
		</c:when>
		<c:when test="${param.format == 'medium' }">
			<img src="http://dora.info-science.uiowa.edu:1337${row.medium}"/>
		</c:when>
		<c:when test="${param.format == 'thumbnail' }">
			<img src="http://dora.info-science.uiowa.edu:1337${row.thumbnail}"/>
		</c:when>
		<c:otherwise>
			<img src="http://dora.info-science.uiowa.edu:1337${row.url}"/>
		</c:otherwise>
	</c:choose>
	${row.jsonb_pretty}
</c:forEach>
