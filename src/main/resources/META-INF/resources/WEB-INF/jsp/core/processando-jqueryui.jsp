<%@taglib prefix="dandelion" uri="http://github.com/dandelion" %>

<dandelion:bundle includes="jqueryui.theme"/>

<!-- Mensagem "Processando..." -->
<script language="JavaScript" type="text/javascript">
  $(function() {
      $('#processando').hide();
  });
  $("form").submit(function() {
      $('#processando').dialog({
          modal: true, 
          resizable: false, 
          open: function(event, ui) { $(".ui-dialog-titlebar-close").hide(); },
          close: function(event, ui) { $(this).dialog('close'); return false; }
      });
      return true;
  });
</script>
<div id="processando" title="Processando ...">
  <br>
  <p align="center" style="text-decoration: blink;">
    <img src="imagens/loading.gif"/>&nbsp;&nbsp;Aguarde, em processamento ... <br><br>
  </p>
</div>