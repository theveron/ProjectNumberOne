const COUNTRY = {
  'jp': 'Japan',
  'ms': 'Malaysia',
  'vn': 'Vietnam'
};
const SEX = ['Female', 'Male', 'Others'];

var $tblResult = $('#records_table tbody');

var mData = {
  title: "Users",
  users: [{
    id: "1",
    first_name: "Truong",
    last_name: "Tran",
    sex: "1",
    birthday: "1988-04-01",
    phone: "090-1234-5678",
    country: "vn",
    note: "Noted"
  }],
  currId : 0
}

var validName = (firstName, lastName) =>{
  var name = firstName + " " + lastName
  var values = name.split(' ').filter(function(v){return v!==''});
  if (firstName == "" || lastName == "") {
    alert("Name must not be empty");
    return false; 
  } else if ((firstName+lastName).length > 50) {
    alert("Name must be maximum 50 characters");
    return false;
  } else if (values.length > 2 ) {
    alert("Name must not be more than 2 words");
    return false;
  } else if (/^[a-zA-Z\s]+$/.test(name) == false) {
    alert("Name must be in alphabet format");
    return false; 
  } else {
    return true;
  }
};

var validPhone = (phone) => { 
  if (phone == "") {
    alert("Phone must not be empty");
    return false; 
  } else if(/\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/.test(phone) == false) {
    alert("Please input the correct phone format");
    return false;
  }
  else {
    return true;
  }
};

var validBirthday = (birthday) => {  
  var currentDate = new Date();
  var givenDate = new Date(birthday);
  var regEx = /^\d{4}-\d{2}-\d{2}$/;
  if (birthday == "") {
    alert("Birthday must not be empty");
    return false; 
  } 
  else if(!birthday.match(regEx)) {
    alert("Please key in the correct format of birthday date");
    return false;
  } else if (givenDate > currentDate) {
    alert("Birthday date is later than current date");
    return false;
  } else {
    return true;
  }
};

var validCountry = (country) => {
  if (country == null) {
    alert("Please select a country");
    return false; 
  } else {
    return true;
  }
};

var genTrUser = (user) => {
  return $('<tr>').append(
    $('<td>').text(user.id),
    $('<td>').text(user.first_name + " " + user.last_name),
    $('<td>').text(SEX[user.sex]),
    $('<td>').text(user.birthday),
    $('<td>').text(user.phone),
    $('<td>').text(COUNTRY[user.country]),
    $('<td>').text(user.note)
  );
};

var genTblUsers = () => {
  $tblResult.empty();
  mData.users.forEach((user) => {
    $tblResult.append(genTrUser(user));
  });
};

$("button[type='submit']").click( () => {  
  let firstName = $("input[name='first_name']").val();
  let lastName = $("input[name='last_name']").val();
  let sex = $("input[name='sex']:checked").val();
  let birthday = $("input[name='birthday']").val();
  let phone = $("input[name='phone']").val();
  let country = $("select[name='country']").val();
  country = country;
  let note = $("textarea[name='note']").val();

  let valids = [validName(firstName, lastName), validBirthday(birthday), validPhone(phone), validCountry(country)];
  if(! valids.includes(false)){
    let user = {
      id: ++mData.currId,
      first_name: firstName,
      last_name: lastName,
      sex: sex,
      birthday: birthday,
      phone: phone,
      country: country,
      note: note
    };

    mData.users.push(user);
    genTblUsers();
  }
  
  return false;
  
} );

genTblUsers();