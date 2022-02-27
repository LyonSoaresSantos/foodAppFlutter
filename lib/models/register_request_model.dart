class RegisterRequestModel {
  String? name;
  String? address;
  String? county;
  String? email;
  String? password;
  String? passwordconfirmation;
  String? imagepath;

  RegisterRequestModel(
      {this.name,
      this.address,
      this.county,
      this.email,
      this.password,
      this.passwordconfirmation,
      this.imagepath});

  RegisterRequestModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address = json['address'];
    county = json['county'];
    email = json['email'];
    password = json['password'];
    passwordconfirmation = json['passwordconfirmation'];
    imagepath = json['imagepath'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['address'] = address;
    _data['county'] = county;
    _data['email'] = email;
    _data['password'] = password;
    _data['passwordconfirmation'] = passwordconfirmation;
    _data['imagepath'] = imagepath;
    return _data;
  }
}
