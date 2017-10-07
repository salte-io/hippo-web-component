<%@ include file="/WEB-INF/jsp/include/imports.jsp" %>

<%--@elvariable id="cparam" type="io.salte.hippo.plugins.info.WebComponentInfo"--%>
<c:choose>
  <c:when test="${requestScope.editMode}">
    <c:choose>
      <c:when test="${cparam.url ne null && cparam.elementName ne null}">
        <h2>${cparam.elementName}</h2>
      </c:when>
      <c:otherwise>
        <i>Click to Select Desired Web Component</i>
      </c:otherwise>
    </c:choose>
  </c:when>
  <c:otherwise>
    <c:choose>
      <c:when test="${cparam.url ne null && cparam.elementName ne null}">
        <script>
          var onload = function() {
            if (!document.getElementById('${cparam.elementName}')) {
              var link = document.createElement('link');
              link.id = '${cparam.elementName}';
              link.rel = 'import';
              link.href = '${cparam.url}';
              document.head.appendChild(link);
            }
          }

          if (document.getElementById('webcomponents-loader')) {
            onload();
          } else {
            var script = document.createElement('script');
            script.id = 'webcomponents-loader';
            script.async = true;
            script.src = './node_modules/@webcomponents/webcomponentsjs/webcomponents-loader.js';
            script.onload = onload;
            document.head.appendChild(script);
          }
        </script>
        <${cparam.elementName}></${cparam.elementName}>
      </c:when>
      <c:otherwise>
        <div>
          <h1>Something Unexpected Happened</h1>
        </div>
      </c:otherwise>
    </c:choose>
  </c:otherwise>
</c:choose>
