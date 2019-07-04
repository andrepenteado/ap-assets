$.extend( true, oTable_GridDatatable_params, {
    lengthMenu : [[-1], ["Não"]],
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
    dom: "<'row'" +
             "<'col-12 col-sm-12 col-md-12'rt>" +
         ">"
    }
);