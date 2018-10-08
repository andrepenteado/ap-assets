$.extend( true, oTable_GridDatatable_params, { 
    lengthMenu : [[10, -1], ["Sim", "Não"]],
    responsive: {
       details: {
           display: $.fn.dataTable.Responsive.display.modal( {
               header: function ( row ) {
                   return 'Dados';
               }
           }),
           renderer: $.fn.dataTable.Responsive.renderer.tableAll( {
               tableClass: 'table'
           })
       }
    },
    buttons: [ 
        /*{
            extend: 'pdf',
            title: 'arquivo',
            exportOptions: {
                columns: ':visible'
            }
        },*/ 
        {
            extend: 'excel', 
            title: 'dados-tabela',
            className: 'btn btn-light border',
            text: '<i class="fas fa-download" title="Download"></i>',
            exportOptions: {
                columns: ':visible'
            }
        }, 
        {
            extend: 'print',
            className: 'btn btn-light border',
            text: '<i class="fas fa-print" title="Imprimir"></i>',
            exportOptions: {
                columns: ':visible'
            }
        },
        {
            extend: 'colvis',
            className: 'btn btn-light border',
            text: '<i class="fas fa-eye" title="Selecionar Colunas"></i>'
        }
    ],
    dom: "<'row'" +
            "<'d-none d-sm-block col-sm-4 col-md-4'l>" +
            "<'d-none d-sm-block col-sm-4 col-md-4'B>" +
            "<'col-12 col-sm-4 col-md-4'f>" +
         ">" + 
         "<'row'" + 
            "<'col-12 col-sm-12 col-md-12'rt>" +
         ">" + 
         "<'row'" +
            "<'d-none d-sm-block col-sm-6 col-md-6'i>" +
            "<'col-12 col-sm-6 col-md-6'p>" +
         ">"
    }
);