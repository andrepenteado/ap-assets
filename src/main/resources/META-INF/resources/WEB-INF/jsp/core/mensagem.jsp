<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://github.com/dandelion" prefix="dandelion"%>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="header" content="Atenção" />
  <title>Atenção</title>
  <dandelion:bundle includes="font-awesome"/>
</head>
<body>

  <div class="text-center">
    <i class="fas fa-info-circle fa-4x"></i>
    <h4>${mensagemInfo}</h4>
    <br/>
    <a href="<%=request.getContextPath()%>/" class="btn btn-primary"><i class="fas fa-home"></i> Página Inicial</a>
  </div>

</body>
</html>
