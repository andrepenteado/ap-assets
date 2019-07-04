<%@page isErrorPage="true" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
  <title>Erro no processamento</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></link>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"></link>
</head>
<!-- <style>
body {
    font-family: monospace;
}
table {
    border-collapse: collapse;
    background-color: #EEE;
    width: 750px;
}
table, th, td {
    border: 1px solid black;
}
th, td {
    padding: 5px;
    text-align: left;
}
th {
    background-color: #AAA;
    text-align: center;
}
</style> -->
<body>

  <div style="background-color: #337ab7; overflow:hidden; position: fixed; top: 0; left: 0; width: 100%">
    <p style="float: left; font-size: 24px; font-weight: bold; color: #fff; margin-top:i 10px; height: 31px;">&nbsp;&nbsp;erro no processamento</p>
  </div>

  <div style="text-align: center; margin-top: 100px;">
    <i class="fa fa-exclamation-triangle fa-4x"></i>
    <h2>Erro no processamento</h2>
    <p>Sua requisição não foi processada corretamente pelo servidor.</p>
    <br/>
    <a href="<%=request.getContextPath()%>/" class="btn btn-primary"><i class="fa fa-home"></i> Página Inicial</a>
  </div>

  <!--
    <%if (exception != null) exception.printStackTrace(new java.io.PrintWriter(out));%>
  -->

  <%-- <br>
  <div align="center" style="visibility: hidden;">
    <h3 style="color: red;"> Atenção! Erro no processamento da página.</h3>
    <br>
    <table>
      <th colspan="3">Relatório de Erro</th>
      <tr valign="top">
        <td><b>URI:</b></td>
        <td>${pageContext.errorData.requestURI}</td>
      </tr>
      <tr valign="top">
        <td><b>Erro:</b></td>
        <td>${pageContext.exception}</td>
      </tr>
      <tr valign="top">
        <td><b>Status:</b></td>
        <td>${pageContext.errorData.statusCode}</td>
      </tr>
      <tr valign="top">
        <td><b>Stacktrace:</b></td>
        <td>
          <%if (exception != null) exception.printStackTrace(new java.io.PrintWriter(out));%>
        </td>
      </tr>
    </table>
  </div>
  <br> --%>
</body>
</html>
