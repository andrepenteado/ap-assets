<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
<%@taglib prefix="dandelion" uri="http://github.com/dandelion" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <%@include file="../head.jsp"%>
  <dandelion:bundle includes="bootstrap, font-awesome"/>
  <sitemesh:write property='head' />
</head>

<body>

  <!-- Invísivel em telas pequenas -->
  <div class="d-none d-sm-block">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb fixed-top" style="margin-top: 56px">
        <li class="breadcrumb-item"><a href="<c:url value='/'/>"><i class="fas fa-home"></i></a></li>
        <sitemesh:write property="meta.previouspage" />
        <li class="breadcrumb-item active" aria-current="page"><sitemesh:write property="meta.header" /></li>
      </ol>
    </nav>
  </div>
  
  <nav class="navbar navbar-expand-md navbar-dark bg-primary fixed-top mb-4">
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
  
  <main role="main" class="container">
    <div class="d-sm-none" style="margin-top: 70px;"></div>
    <div class="d-none d-sm-block" style="margin-top: 120px;"></div>
    <%@include file="../body.jsp"%>
    <sitemesh:write property='body' />
  </main> <!-- /container -->
  
  <br><br>

</body>
</html>
