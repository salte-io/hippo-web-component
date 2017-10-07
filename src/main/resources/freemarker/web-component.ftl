<#include "../include/imports.ftl">

<#-- @ftlvariable name="cparam" type="io.salte.hippo.plugins.info.WebComponentInfo" -->
<#if editMode>
  <#if cparam.url?? && cparam.elementName??>
    <h2>${cparam.elementName}</h2>
  <#else>
    <i>Click to Select Desired Web Component</i>
  </#if>
<#else>
  <#if cparam.url?? && cparam.elementName??>
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
  <#else>
    <div>
      <h1>Something Unexpected Happened</h1>
    </div>
  </#if>
</#if>
