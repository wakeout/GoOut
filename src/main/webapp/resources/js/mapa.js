
	var map = null;
	var directionsDisplay = null;
	var directionsService = null;

	function initialize() {
		
		 var myLatlng = new google.maps.LatLng(40.4167754, -3.7037901999999576);
		    var myOptions = {
		        zoom: 4,
		        center: myLatlng,
		        mapTypeId: google.maps.MapTypeId.ROADMAP
		    };
		    map = new google.maps.Map($("#map_canvas").get(0), myOptions);
			directionsDisplay = new google.maps.DirectionsRenderer();
			directionsService = new google.maps.DirectionsService();
	}

	function getDirections(){
		
		var start = $('#orig').val();
		var end = $('#dest').val();
		
		if(start != '' && end != '')
			$("#panel_ruta").css("display", "block");
		
		if(end == ''){
			end=start;
		}
		
		if($('#mi_origen').val())
			start=$('#mi_origen').val();
		
		var request = {
		        origin: start,
		        destination: end,
		        travelMode: google.maps.DirectionsTravelMode["DRIVING"],
		        unitSystem: google.maps.DirectionsUnitSystem["METRIC"],
		        provideRouteAlternatives: true
	    };
		directionsService.route(request, function(response, status) {
	        if (status == google.maps.DirectionsStatus.OK) {
	            directionsDisplay.setMap(map);
	            directionsDisplay.setPanel($("#panel_ruta").get(0));
	            directionsDisplay.setDirections(response);
	        } else {
	            //alert("No hay opcion de ruta disponible");
	        }
	    });
	}

		 $(document).ready(function(){
	        initialize();
	        getDirections();
	        
	    	
	    	$( "#calcular" ).click(function() {
	        	getDirections();
	        	$("#panel_ruta").css("display", "block");
	        	});
	 });
	
	