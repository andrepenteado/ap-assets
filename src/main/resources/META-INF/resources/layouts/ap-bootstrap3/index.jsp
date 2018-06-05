<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
<%@taglib prefix="dandelion" uri="http://github.com/dandelion" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Garante a renderização adequada para mobile e desabilita o zoom, ou seja, o usuário só é capaz de rolar a tela -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <%@include file="../head.jsp"%>
    <dandelion:bundle includes="bootstrap3"/>
    <link href="https://fonts.googleapis.com/css?family=Material+Icons" rel="stylesheet">
    <sitemesh:write property='head' />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    <!-- Static navbar -->
    <nav class="navbar navbar-inverse navbar-static-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand text-uppercase" href="<%=request.getContextPath()%>/"><strong><%=application.getServletContextName()%></strong></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <%@include file="../menu.jsp"%>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <%@include file="../toolbar.jsp"%>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <ol class="breadcrumb" style="margin-top: -20px">
      <li><a href="<%=request.getContextPath()%>/">Página inicial</a></li>
      <sitemesh:write property="meta.previouspage" />
      <li class="active"><sitemesh:write property="meta.header" /></li>
    </ol>

    <div class="container">

      <%@include file="../body.jsp"%>
      <sitemesh:write property='body' />

    </div> <!-- /container -->

  </body>
</html>