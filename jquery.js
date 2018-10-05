//var users = '[{"id": "1", "first_name": "Truong", "last_name": "Tran", "sex": "1", "birthday": "1988-04-01", "phone": "090-1234-5678", "country": "vn", "note": ""  }]';

var users = '{"title": "Users", "users":[{"id": "1", "first_name": "Truong", "last_name": "Tran", "sex": "1", "birthday": "1988-04-01", "phone": "090-1234-5678", "country": "vn", "note": "" }]}'

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
        console.log(i);
        $('<tr>').append(
        $('<td>').text(item.id),
        $('<td>').text(item.first_name + "" + item.last_name),
        $('<td>').text(item.sex),
        $('<td>').text(item.birthday),
        $('<td>').text(item.phone),
        $('<td>').text(item.country),
        $('<td>').text(item.note)).appendTo('#records_table');
    });
  
    $( "form" ).submit(function( event ) {
      console.log( $( this ).serializeObject() );

      //event.preventDefault();
    });
});