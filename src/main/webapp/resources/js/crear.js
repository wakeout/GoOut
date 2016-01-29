    $(document).ready(function(){
        initialize('avenida complutense');
        $('#search').bind('click',function(){
            initialize($('#address').val()); 
        });
        
        $('#add_origen').bind('click',function(){
            $('#caja_origen').val($('#address').val());
        });
        
        $('#add_destino').bind('click',function(){
            $('#caja_destino').val($('#address').val());
        });
    })

function initialize(address) {
      // I create a new google maps object to handle the request and we pass the address to it
  var geoCoder = new google.maps.Geocoder(address)
      // a new object for the request I called "request" , you can put there other parameters to specify a better search (check google api doc for details) , 
      // on this example im going to add just the address  
  var request = {address:address};
       
      // I make the request 
  geoCoder.geocode(request, function(result, status){
              var latlng = new google.maps.LatLng(result[0].geometry.location.lat(), result[0].geometry.location.lng());  
 
      // some initial values to the map   
      var myOptions = {
        zoom: 15,
        center: latlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
      };
 
           // the map is created with all the information 
             var map = new google.maps.Map(document.getElementById("map_canvas"),myOptions);
 
           // an extra step is need it to add the mark pointing to the place selected.
          var marker = new google.maps.Marker({position:latlng,map:map,title:'title'});
 
  })
}
    