<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="a.css" rel="stylesheet" type="text/css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Congestion report</title>
</head>
<body bgcolor="#2E4272">
<div style=" height: 103px; width: 100%; z-index: 3;">
    <img name="banner" border="0" height="103" width=100% src="travelmidwestbanner7.jpg" alt="">
  </div>
  <br>
  <div>
<script>
var _table_ = document.createElement('table'),
_tr_ = document.createElement('tr'),
_th_ = document.createElement('th'),
_td_ = document.createElement('td');

function buildHtmlTable(arr) {
 var table = _table_.cloneNode(false),
     columns = addAllColumnHeaders(arr, table);
 for (var i=0, maxi=arr.length; i < maxi; ++i) {
     var tr = _tr_.cloneNode(false);
     for (var j=0, maxj=columns.length; j < maxj ; ++j) {
         var td = _td_.cloneNode(false);
             cellValue = arr[i][columns[j]];
         td.appendChild(document.createTextNode(arr[i][columns[j]] || ''));
         tr.appendChild(td);
     }
     table.appendChild(tr);
 }
 return table;
}

function addAllColumnHeaders(arr, table)
{
 var columnSet = [],
     tr = _tr_.cloneNode(false);
 for (var i=0, l=arr.length; i < l; i++) {
     for (var key in arr[i]) {
         if (arr[i].hasOwnProperty(key) && columnSet.indexOf(key)===-1) {
             columnSet.push(key);
             var th = _th_.cloneNode(false);
             th.appendChild(document.createTextNode(key));
             tr.appendChild(th);
         }
     }
 }
 table.appendChild(tr);
 return columnSet;
}


document.body.appendChild(buildHtmlTable(
		[{
		    "from": "Indiana State Line",
		    "to": "Dan Ryan Expy",
		    "id": "IL-SKYWAY-002",
		    "level": "UNKNOWN_CONGESTION_LEVEL",
		    "on": "WB Chicago Skwy",
		    "tt": -1.0,
		    "avg": 7.98,
		    "len": 7.798829833770778,
		    "spd": "N/A",
		    "ovrAvg": false
		},
		{
		    "from": "65th St",
		    "to": "29th St (via Locals)",
		    "id": "IL-TESTTSC-155",
		    "level": "LIGHT_CONGESTION",
		    "on": "NB Dan Ryan Expy",
		    "tt": 5.766666666666667,
		    "avg": 7.6,
		    "len": 4.429755229459953,
		    "spd": "45",
		    "ovrAvg": false
		},
		{
		    "from": "95th St",
		    "to": "29th St (via Locals)",
		    "id": "IL-TESTTSC-160",
		    "level": "LIGHT_CONGESTION",
		    "on": "NB Dan Ryan Expy",
		    "tt": 9.216666666666667,
		    "avg": 12.75,
		    "len": 8.02438757655293,
		    "spd": "49",
		    "ovrAvg": false
		},
		{
		    "from": "95th St",
		    "to": "I-290/Circle (via Locals)",
		    "id": "IL-TESTTSC-161",
		    "level": "LIGHT_CONGESTION",
		    "on": "NB Dan Ryan Expy",
		    "tt": 17.85,
		    "avg": 20.23,
		    "len": 11.067242304939155,
		    "spd": "36",
		    "ovrAvg": false
		},
		{
		    "from": "I-80 (via I-57)",
		    "to": "I-290/Circle",
		    "id": "IL-TESTTSC-153",
		    "level": "LIGHT_CONGESTION",
		    "on": "NB I-57",
		    "tt": 34.38333333333333,
		    "avg": 35.55,
		    "len": 25.8142448103078,
		    "spd": "45",
		    "ovrAvg": false
		},
		{
		    "from": "95th St",
		    "to": "I-290/Circle (via Express)",
		    "id": "IL-TESTTSC-154",
		    "level": "LIGHT_CONGESTION",
		    "on": "NB Dan Ryan Expy",
		    "tt": 16.883333333333333,
		    "avg": 17.87,
		    "len": 11.203322596039131,
		    "spd": "38",
		    "ovrAvg": false
		},
		{
		    "from": "I-80 (via Bishop Ford)",
		    "to": "I-290/Circle (via Dan Ryan)",
		    "id": "IL-TESTTSC-139",
		    "level": "LIGHT_CONGESTION",
		    "on": "NB Bishop Ford Fwy",
		    "tt": 25.633333333333333,
		    "avg": 31.28,
		    "len": 23.138620456533843,
		    "spd": "54",
		    "ovrAvg": false
		},
		{
		    "from": "I-290 / Circle",
		    "to": "Ohio St",
		    "id": "IL-TESTTSC-156",
		    "level": "LIGHT_CONGESTION",
		    "on": "WB Kennedy Expy",
		    "tt": 1.5166666666666666,
		    "avg": 1.67,
		    "len": 1.1364879106020838,
		    "spd": "45",
		    "ovrAvg": false
		},
		{
		    "from": "I-290 / Circle (via Kennedy)",
		    "to": "Lake Cook Rd (via Edens)",
		    "id": "IL-TESTTSC-233",
		    "level": "LIGHT_CONGESTION",
		    "on": "NB Edens Expy",
		    "tt": 26.316666666666666,
		    "avg": 26.97,
		    "len": 22.836634057106497,
		    "spd": "51",
		    "ovrAvg": false
		},
		{
		    "from": "I-290 / Circle",
		    "to": "Montrose Ave",
		    "id": "IL-TESTTSC-157",
		    "level": "LIGHT_CONGESTION",
		    "on": "WB Kennedy Expy",
		    "tt": 9.783333333333333,
		    "avg": 9.65,
		    "len": 7.903220194066651,
		    "spd": "47",
		    "ovrAvg": false
		},
		{
		    "from": "I-290 / Circle",
		    "to": "IL-43 (Harlem Ave)",
		    "id": "IL-TESTTSC-158",
		    "level": "LIGHT_CONGESTION",
		    "on": "WB Kennedy Expy",
		    "tt": 13.816666666666666,
		    "avg": 14.18,
		    "len": 11.940890201224846,
		    "spd": "51",
		    "ovrAvg": false
		},
		{
		    "from": "I-290 / Circle",
		    "to": "O'Hare",
		    "id": "IL-TESTTSC-159",
		    "level": "LIGHT_CONGESTION",
		    "on": "WB Kennedy Expy",
		    "tt": 19.633333333333333,
		    "avg": 19.97,
		    "len": 17.46798695617593,
		    "spd": "51",
		    "ovrAvg": false
		},
		{
		    "from": "Circle",
		    "to": "Cumberland Av",
		    "id": "IL-TESTTSC-272",
		    "level": "LIGHT_CONGESTION",
		    "on": "WB I-90",
		    "tt": 15.533333333333333,
		    "avg": 16.58,
		    "len": 13.437773403324584,
		    "spd": "51",
		    "ovrAvg": false
		},
		{
		    "from": "Ohio St",
		    "to": "O'Hare",
		    "id": "IL-TESTTSC-196",
		    "level": "LIGHT_CONGESTION",
		    "on": "WB I-90",
		    "tt": 18.216666666666665,
		    "avg": 18.4,
		    "len": 16.40544221745009,
		    "spd": "53",
		    "ovrAvg": false
		},
		{
		    "from": "Montrose Ave",
		    "to": "Touhy Ave",
		    "id": "IL-TESTTSC-176",
		    "level": "LIGHT_CONGESTION",
		    "on": "NB Edens Expy",
		    "tt": 3.9833333333333334,
		    "avg": 4.23,
		    "len": 3.643099300087489,
		    "spd": "54",
		    "ovrAvg": false
		},
		{
		    "from": "Montrose Ave",
		    "to": "Willow Rd",
		    "id": "IL-TESTTSC-177",
		    "level": "NON_CONGESTION",
		    "on": "NB Edens Expy",
		    "tt": 11.666666666666666,
		    "avg": 12.5,
		    "len": 10.880830947267954,
		    "spd": "55",
		    "ovrAvg": false
		},
		{
		    "from": "Montrose Ave",
		    "to": "O'Hare",
		    "id": "IL-TESTTSC-197",
		    "level": "NON_CONGESTION",
		    "on": "WB I-90",
		    "tt": 10.233333333333333,
		    "avg": 10.72,
		    "len": 9.984192316869482,
		    "spd": "52",
		    "ovrAvg": false
		},
		{
		    "from": "IL-43 (Harlem Ave)",
		    "to": "O'Hare",
		    "id": "IL-TESTTSC-198",
		    "level": "NON_CONGESTION",
		    "on": "WB I-90",
		    "tt": 6.433333333333334,
		    "avg": 6.4,
		    "len": 6.095030024656008,
		    "spd": "49",
		    "ovrAvg": false
		},
		{
		    "from": "O'Hare Area",
		    "to": "Schaumburg / IL-53",
		    "id": "IL-TIMS-I_90-W-9",
		    "level": "NON_CONGESTION",
		    "on": "WB I-90",
		    "tt": 9.033333333333333,
		    "avg": 9.6,
		    "len": 9.177652509345423,
		    "spd": "55",
		    "ovrAvg": false
		},
		{
		    "from": "O'Hare Area",
		    "to": "Elgin Plaza",
		    "id": "IL-TIMS-I_90-W-8",
		    "level": "NON_CONGESTION",
		    "on": "WB I-90",
		    "tt": 23.183333333333334,
		    "avg": 24.55,
		    "len": 23.30390519366897,
		    "spd": "55",
		    "ovrAvg": false
		},
		{
		    "from": "Arlington Hts Rd",
		    "to": "Elgin Plaza",
		    "id": "IL-TIMS-I_90-W-10",
		    "level": "NON_CONGESTION",
		    "on": "WB I-90",
		    "tt": 16.333333333333332,
		    "avg": 17.23,
		    "len": 16.811818977173306,
		    "spd": "55",
		    "ovrAvg": false
		},
		{
		    "from": "Schaumburg/IL-53",
		    "to": "Elgin Plaza",
		    "id": "IL-TIMS-I_90-W-11",
		    "level": "NON_CONGESTION",
		    "on": "WB I-90",
		    "tt": 14.05,
		    "avg": 14.47,
		    "len": 14.125631313131313,
		    "spd": "55",
		    "ovrAvg": false
		},
		{
		    "from": "Elgin Plaza",
		    "to": "Belvidere Plaza",
		    "id": "IL-TIMS-I_90-W-12",
		    "level": "LIGHT_CONGESTION",
		    "on": "WB I-90",
		    "tt": 41.083333333333336,
		    "avg": 33.87,
		    "len": 30.4577517298974,
		    "spd": "44",
		    "ovrAvg": false
		},
		{
		    "from": "Belvidere Plaza",
		    "to": "South Beloit Plaza",
		    "id": "IL-TIMS-I_90-W-14",
		    "level": "NON_CONGESTION",
		    "on": "WB I-90",
		    "tt": 20.716666666666665,
		    "avg": 20.03,
		    "len": 20.011880617195576,
		    "spd": "57",
		    "ovrAvg": false
		},
		{
		    "from": "I-39/I-90 Interchange",
		    "to": "South Beloit Plaza",
		    "id": "IL-TIMS-I_90-W-15",
		    "level": "NON_CONGESTION",
		    "on": "WB I-90",
		    "tt": 12.966666666666667,
		    "avg": 13.32,
		    "len": 14.195846257854132,
		    "spd": "64",
		    "ovrAvg": false
		},
		{
		    "from": "Illinois State Line",
		    "to": "WI-26/Milton Av",
		    "id": "WI-WisDOT-T-993901",
		    "level": "NON_CONGESTION",
		    "on": "NB I-39/I-90",
		    "tt": 16.95,
		    "avg": 18.65,
		    "len": 16.343926469418594,
		    "spd": "58",
		    "ovrAvg": false
		}]
		
		));
</script></div>
</body>
</html>