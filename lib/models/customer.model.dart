class CustomerModel {
  String name;
  String lastname;
  String email;
  String password;
  String address;
  String neighborhood;
  String zipcode;
  String city;
  String state;

  CustomerModel(
      {this.name,
      this.lastname,
      this.email,
      this.password,
      this.address,
      this.neighborhood,
      this.zipcode,
      this.city,
      this.state});

  CustomerModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    lastname = json['lastname'];
    email = json['email'];
    password = json['password'];
    address = json['address'];
    neighborhood = json['neighborhood'];
    zipcode = json['zipcode'];
    city = json['city'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['lastname'] = this.lastname;
    data['email'] = this.email;
    data['password'] = this.password;
    data['address'] = this.address;
    data['neighborhood'] = this.neighborhood;
    data['zipcode'] = this.zipcode;
    data['city'] = this.city;
    data['state'] = this.state;
    return data;
  }
}
