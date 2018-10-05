var users = '{"title": "Users", "users":[{"id": "1", "first_name": "Truong", "last_name": "Tran", "sex": "1", "birthday": "1988-04-01", "phone": "090-1234-5678", "country": "vn", "note": "" }]}'

response = $.parseJSON(users);
console.log(response.users);

$(function () {
    $.each(response.users, function (i, item) {
        if (item.sex == 1) {
          item.sex = "Male";
        }else if (item.sex == 0){
          item.sex = "Female";
        }else {
          item.sex = "Others"
        }
      
        if (item.country == "vn")  {
          item.country = "Vietnam";
        }else if (item.country == "ms") {
          item.country = "Malaysia";
        }else {
          item.country = "Japan";
        }

        $('<tr>').append(
        $('<td>').text(item.id),
        $('<td>').text(item.first_name + "" + item.last_name),
        $('<td>').text(item.sex),
        $('<td>').text(item.birthday),
        $('<td>').text(item.phone),
        $('<td>').text(item.country),
        $('<td>').text(item.note)).appendTo('#records_table');
    });
  
    // $( "form" ).submit(function( event ) {
    //   console.log( $( this ).serializeObject() );

    //   //event.preventDefault();
    // });
});


(function() {
	function toJSONString( form ) {
		var obj = {};
		var elements = form.querySelectorAll( "input, select, textarea" );
		for( var i = 0; i < elements.length; ++i ) {
			var element = elements[i];
			var name = element.name;
			var value = element.value;

			if( name ) {
				obj[ name ] = value;
			}
		}
		return JSON.stringify( obj );
	}

	document.addEventListener( "DOMContentLoaded", function() {
		var form = document.getElementById( "user_form" );
		form.addEventListener( "submit", function( e ) {
			e.preventDefault();
      var json = toJSONString( this );
      console.log(json);
		}, false);
	});

})();
