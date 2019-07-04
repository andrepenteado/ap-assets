<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://github.com/dandelion" prefix="dandelion"%>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="header" content="Página inicial" />
  <title>Página inicial</title>
  <dandelion:bundle includes="font-awesome"/>
</head>
<body>
  <div class="text-center">
    <i class="fas fa-home fa-4x"></i>
    <h2>Página Inicial</h2>
    <p>Você está conectado em <strong><%=application.getServletContextName()%></strong> através do IP <strong><span id="exibeIP"></span></strong></p>
  </div>
  <script type="application/javascript">
      function getIP(json) {
          $("#exibeIP").text(json.ip);
      }
  </script>
  <script type="application/javascript" src="https://api.ipify.org?format=jsonp&callback=getIP"></script>
</body>
</html>
