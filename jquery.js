var form = new Vue({
  el: "#records",
  data: {
    error: false,
    users: [
      {
        id: "1",
        first_name: "Truong",
        last_name: "Tran",
        sex: "1",
        birthday: "1988-04-01",
        phone: "090-1234-5678",
        country: "vn",
        note: "Noted"
      }
    ],
    user: {
      id: 0,
      first_name: "",
      last_name: "",
      sex: "",
      birthday: "",
      phone: "",
      country: "",
      note: ""
    },
    validation: {
      first_name: "",
      last_name: "",
      name: "",
      sex: "",
      birthday: "",
      phone: "",
      country: "",
      note: ""
    },
    const_sex: ["Female", "Male", "Others"],
    const_country: {
      jp: "Japan",
      ms: "Malaysia",
      vn: "Vietnam"
    }
  },
  methods: {
    submit: function(e) {
      //Name Validations
      var name = this.$data.user.first_name + " " + this.$data.user.last_name;
      var values = name.split(" ").filter(function(v) {
        return v !== "";
      });
      if (this.$data.user.first_name == "" || this.$data.user.last_name == "") {
        this.$data.validation.name = "Please input first name & last name";
        this.error = false;
      } else if (
        (this.$data.user.first_name + this.$data.user.last_name).length > 50
      ) {
        this.$data.validation.name = "Name must not be more than 50 characters";
        this.error = false;
      } else if (values.length > 2) {
        this.$data.validation.name = "Name must not be more than 2 words";
        this.error = false;
      } else if (/^[a-zA-Z\s]+$/.test(name) == false) {
        this.$data.validation.name = "Name must be in alphabet format";
        this.error = false;
      } else {
        this.$data.validation.name = "";
        this.error = true;
      }
      // end name Validations

      // Birthday validation
      var birthday = this.$data.user.birthday;
      var regEx = /^\d{4}-\d{2}-\d{2}$/;
      var currentDate = new Date();
      var givenDate = new Date(birthday);
      if (birthday == "") {
        this.$data.validation.birthday = "Birthday must not be empty";
        this.error = false;
      } else if (!birthday.match(regEx)) {
        this.$data.validation.birthday =
          "Please key in the correct format of birthday date";
        this.error = false;
      } else if (givenDate > currentDate) {
        this.$data.validation.birthday =
          "Birthday date is later than current date";
        this.error = false;
      } else {
        this.$data.validation.birthday = "";
        this.error = true;
      }
      //end birthday validation

      //phone validaton
      var phone = this.$data.user.phone;
      if (phone == "") {
        this.$data.validation.phone = "Phone must not be empty";
        this.error = false;
      } else if (
        /\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/.test(phone) == false
      ) {
        this.$data.validation.phone = "Please input the correct phone format";
        this.error = false;
      } else {
        this.$data.validation.phone = "";
        this.error = true;
      }
      //end phone validation

      //validation country
      var country = this.$data.user.country;
      if (country == "") {
        this.$data.validation.country = "Please select a country";
        this.error = false;
      } else {
        this.$data.validation.country = "";
        this.error = true;
      }
      //end country validations

      if (this.error == true) {
        this.$data.user.id++;
        var data = this.$data.user;
        this.users.push(Vue.util.extend({}, data));
      }
    }
  }
});
