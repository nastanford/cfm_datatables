<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/r/dt/jq-2.1.4,dt-1.10.9,cr-1.2.0,fc-3.1.0,fh-3.0.0,r-1.0.7,rr-1.0.0,sc-1.3.0/datatables.min.css">

  <title>Document</title>
</head>
<body>




<!---
<button id="res" type="button">reset order</button>
--->

<table id="ConfigMenuTable" class="display" width="100%" cellspacing="0"></table>

<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"></script>
<script src="https://cdn.datatables.net/r/dt/jq-2.1.4,dt-1.10.9,cr-1.2.0,fc-3.1.0,fh-3.0.0,r-1.0.7,rr-1.0.0,sc-1.3.0/datatables.min.js"></script>


<script>
var table;

$(document).ready(function() {
var testData = [{
  Widget: "AnzahlTermine",
  Label: "Termine",
  Icon: "fa fa-clock-o fa-5x",
  positionX: "1",
  positionY: "1",
  id: "163"
}, {
  Widget: "Abwesenheit",
  Label: "Abwesenheit",
  Icon: "fa fa-stethoscope fa-5x",
  positionX: "1",
  positionY: "2",
  id: "166"
}, {
  Widget: "Terminerinnerung",
  Label: "SMS",
  Icon: "fa fa-mobile fa-5x",
  positionX: "1",
  positionY: "3",
  id: "167"
}, {
  Widget: "Pflegepakete",
  Label: "Pflegepakete",
  Icon: "fa fa-tag fa-5x",
  positionX: "1",
  positionY: "4",
  id: "168"
}, {
  Widget: "Fertigstellungsstatus",
  Label: "Status",
  Icon: "fa fa-forward fa-5x",
  positionX: "1",
  positionY: "5",
  id: "169"
}, {
  Widget: "Werkstattteams",
  Label: "Werkstatt-Teams",
  Icon: "fa fa-wrench fa-5x",
  positionX: "1",
  positionY: "6",
  id: "165"
}, {
  Widget: "Werkstattleistung",
  Label: "Werkstattleistung",
  Icon: "fa fa-tachometer fa-5x",
  positionX: "1",
  positionY: "7",
  id: "170"
}, {
  Widget: "Radwechsel",
  Label: "Radwechsel",
  Icon: "fa fa-circle fa-5x",
  positionX: "1",
  positionY: "8",
  id: "171"
}, {
  Widget: "AnzahlErsatzfahrzeuge",
  Label: "Mobilität",
  Icon: "fa fa-taxi fa-5x",
  positionX: "1",
  positionY: "9",
  id: "164"
}]


table = $('#ConfigMenuTable').DataTable({
  data: testData,

  columns: [{
    data: 'positionY',
  }, {
    data: 'Label'
  }, {
    data: 'id'
  }, {
    data: 'positionY',
  }],
  rowReorder: {dataSrc: 'positionY'}

});
});

/**
 * This function will restore the order in which data was read into a DataTable
 * (for example from an HTML source). Although you can set `dt-api order()` to
 * be an empty array (`[]`) in order to prevent sorting during initialisation,
 * it can sometimes be useful to restore the original order after sorting has
 * already occurred - which is exactly what this function does.
 *
 * @name order.neutral()
 * @summary Change ordering of the table to its data load order
 * @author [Allan Jardine](http://datatables.net)
 * @requires DataTables 1.10+
 *
 * @returns {DataTables.Api} DataTables API instance
 *
 * @example
 *    // Return table to the loaded data order
 *    table.order.neutral().draw();
 */

$.fn.dataTable.Api.register( 'order.neutral()', function () {
	return this.iterator( 'table', function ( s ) {
		s.aaSorting.length = 0;
		s.aiDisplay.sort( function (a,b) {
			return a-b;
		} );
		s.aiDisplayMaster.sort( function (a,b) {
			return a-b;
		} );
	} );
} );


</script>


</body>
</html>
