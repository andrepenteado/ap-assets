<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://github.com/dandelion" prefix="dandelion"%>

<html>
<head>
  <title>Erro no processamento</title>
  <meta name="header" content="Erro no processamento" />
  <dandelion:bundle includes="font-awesome"/>
</head>
<body>

  <div style="text-align: center; margin-top: 100px;">
    <i class="fas fa-exclamation-triangle fa-4x"></i>
    <h3>Erro no processamento</h3>
    <h5>Sua requisição não foi processada corretamente pelo servidor.</h5>
    <br/>
    <a href="<%=request.getContextPath()%>/" class="btn btn-primary"><i class="fas fa-home"></i> Página Inicial</a>
  </div>

</body>
</html>