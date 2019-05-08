<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>$Title$</title>
</head>
<body>



<#list goodboy?keys as key >

<#if key=="commList">
<#list goodboy[key] as listcom>
  ${listcom.commId}
</#list>
</#if>
</#list>






</body>
</html>