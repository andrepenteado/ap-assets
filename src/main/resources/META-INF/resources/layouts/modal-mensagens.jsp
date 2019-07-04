<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://github.com/dandelion" prefix="dandelion"%>

<dandelion:bundle includes="sweetalert2,font-awesome" />

<%-- Mensagem de Erro --%>
<c:if test="${not empty mensagemErro}">
  <script type="text/javascript">
      $(document).ready(function() {
          swal('Erro', '${mensagemErro}','error');
      });
  </script>
</c:if>

<%-- Mensagem de Sucesso --%>
<c:if test="${not empty mensagemSucesso}">
  <script type="text/javascript">
      $(document).ready(function() {
          swal('Sucesso', '${mensagemSucesso}','success');
      });
  </script>
</c:if>

<%-- Mensagem de Informação --%>
<c:if test="${not empty mensagemInfo}">
  <script type="text/javascript">
      $(document).ready(function() {
          swal('Informação', '${mensagemInfo}','info');
      });
  </script>
</c:if>

<%-- Mensagem de Atenção --%>
<c:if test="${not empty mensagemAtencao}">
  <script type="text/javascript">
      $(document).ready(function() {
          swal('Atenção', '${mensagemAtencao}','warning');
      });
  </script>
</c:if>