$.extend( true, oTable_GridDatatable_params, {
    lengthMenu : [[15], ["15"]],
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
    dom: "<'row w-100'" +
            "<'col-12'f>" +
         ">" +
         "<'row'" +
            "<'col-12 col-sm-12 col-md-12'rt>" +
         ">" +
         "<'row'" +
            "<'col-12'p>" +
         ">"
    }
);