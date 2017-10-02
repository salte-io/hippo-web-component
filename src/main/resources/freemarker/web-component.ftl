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
    <script src="/node_modules/@webcomponents/webcomponentsjs/webcomponents-loader.js"></script>
    <div>
      <script>
        var link = document.createElement('link');
        link.rel = 'import';
        link.href = '${cparam.url}';
        document.head.appendChild(link);
        var parentElement = document.currentScript.parentElement;
        document.body.style.opacity = 0;
        window.addEventListener('WebComponentsReady', function() {
          document.body.style.opacity = 1;
          parentElement.innerHTML = '<${cparam.elementName}></${cparam.elementName}>';
        });
      </script>
    </div>
  <#else>
    <div>
      <h1>Something Unexpected Happened</h1>
    </div>
  </#if>
</#if>
