$.extend( true, oTable_GridDatatable_params, { 
    lengthMenu : [[10, -1], ["Sim", "Não"]],
    responsive: {
        details: {
            display: $.fn.dataTable.Responsive.display.modal( {
                header: function ( row ) {
                    /*var data = row.data();
                    return 'Details for '+data[0]+' '+data[1];*/
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
            exportOptions: {
                columns: ':visible'
            }
        }, 
        {
            extend: 'print', 
            exportOptions: {
                columns: ':visible'
            }
        }, 
        'colvis',
    ],
    language: {
        buttons: {
            excel: '<span class=\"glyphicon glyphicon-download-alt\" title=\"Download\"></span>',
            print: '<span class=\"glyphicon glyphicon-print\" title=\"Imprimir\"></span>',
            colvis: '<span class=\"glyphicon glyphicon-eye-open\" title=\"Selecionar Colunas\"></span>'
        }
    },
    dom: "<'row'" + 
            "<'hidden-xs col-sm-4 col-md-4'l>" +
            "<'hidden-xs col-sm-4 col-md-4'B>" +
            "<'col-xs-12 col-sm-4 col-md-4'f>" +
         ">" + 
         "<'row'" + 
            "<'col-xs-12 col-sm-12 col-md-12'rt>" + 
         ">" + 
         "<'row'" +
            "<'hidden-xs col-sm-6 col-md-6'i>" + 
            "<'col-xs-12 col-sm-6 col-md-6'p>" +
         ">"
    }
);