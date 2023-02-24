<%@ include file="../_include.jsp"%>

<sql:query var="media" dataSource="jdbc/STRAPITagLib">
	select
		url,
		((formats->>'large')::jsonb)->>'url' as large,
		((formats->>'small')::jsonb)->>'url' as small,
		((formats->>'medium')::jsonb)->>'url' as medium,
		((formats->>'thumbnail')::jsonb)->>'url' as thumbnail
	from
		strapi.files,
		strapi.files_related_morphs
	where files.id=files_related_morphs.file_id
	  and related_type = 'api::bio.bio'
	  and field = 'headshot'
	  and related_id = ?::int;
	<sql:param>${param.id}</sql:param>
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
