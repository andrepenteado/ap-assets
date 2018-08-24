<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
<%@taglib prefix="dandelion" uri="http://github.com/dandelion" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%@include file="../head.jsp"%>
    <dandelion:bundle includes="bootstrap4"/>
    <sitemesh:write property='head' />
  </head>

  <body>
    <!-- Static navbar -->
    <nav class="navbar navbar-expand-md navbar-dark bg-primary mb-4">
      <a class="navbar-brand" href="<%=request.getContextPath()%>/"><strong><%=application.getServletContextName()%></strong></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
          <%@include file="../menu.jsp"%>
        </ul>
        <ul class="navbar-nav ml-auto">
          <%@include file="../toolbar.jsp"%>
        </ul>
      </div>
    </nav>

    <nav aria-label="breadcrumb">
      <ol class="breadcrumb" style="margin-top: -23px">
        <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/"><%=application.getServletContextName()%></a></li>
        <sitemesh:write property="meta.previouspage" />
        <li class="breadcrumb-item active" aria-current="page"><sitemesh:write property="meta.header" /></li>
      </ol>
    </nav>

    <main role="main" class="container">

      <%@include file="../body.jsp"%>
      <sitemesh:write property='body' />

    </main> <!-- /container -->

  </body>
</html>