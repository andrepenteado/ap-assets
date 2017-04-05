/*
 * Translated default messages for the jQuery validation plugin.
 * Locale: PT (Portuguese; português)
 * Region: BR (Brazil)
 */
(function ($) {
	$.extend($.validator.messages, {
		required: "Campo obrigat&oacute;rio",
		remote: "Valor incorreto",
		email: "E-mail inv&aacute;lido",
		url: "URL inv&aacute;lida",
		date: "Data inv&aacute;lida",
		dateISO: "Data v&aacute;lida (ISO)",
		number: "N&uacute;mero inv&aacute;lido",
		digits: "Forne&ccedil;a somente d&iacute;gitos",
		creditcard: "Cart&atilde;o de cr&eacute;dito inv&aacute;lido",
		equalTo: "Forne&ccedil;a o mesmo valor novamente",
		accept: "Forne&ccedil;a um valor com uma extens&atilde;o v&aacute;lida",
		maxlength: $.validator.format("M&aacute;ximo de {0} caracteres"),
		minlength: $.validator.format("M&iacute;nimo de {0} caracteres"),
		rangelength: $.validator.format("Forne&ccedil;a um valor entre {0} e {1} caracteres de comprimento"),
		range: $.validator.format("Forne&ccedil;a um valor entre {0} e {1}"),
		max: $.validator.format("Valor maior que {0}"),
		min: $.validator.format("Valor menor que {0}")
	});
}(jQuery));