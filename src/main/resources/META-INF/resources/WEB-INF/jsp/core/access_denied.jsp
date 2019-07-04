<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="header" content="Acesso Negado" />
  <title>Acesso Negado</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"></link>
</head>
<body>

  <div style="background-color: #337ab7; overflow:hidden; position: fixed; top: 0; left: 0; width: 100%">
    <p style="float: left; font-size: 24px; font-weight: bold; color: #fff; margin-top: 10px; height: 31px;">&nbsp;&nbsp;acesso negado</p>
  </div>

  <div style="text-align: center; margin-top: 100px;">
    <i class="fa fa-lock fa-4x"></i>
    <h2>Acesso Negado</h2>
    <p>Voc&ecirc; foi desconectado ou n&atilde;o tem privil&eacute;gios suficientes para completar a opera&ccedil;&atilde;o</p>
    <br/>
    <a href="<%=request.getContextPath()%>/" class="btn btn-primary"><span class="glyphicon glyphicon-repeat"></span> P&aacute;gina Inicial</a>
  </div>

</body>
</html>
