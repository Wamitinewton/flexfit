class AuthModel {
  String? id;
  String? email;
  String? userName;
  String? password;
  String? token;

  AuthModel({
    this.id,
    this.email,
    this.password,
    this.token,
    this.userName
  });

  AuthModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    userName = json['userName'];
    password = json['password'];
    token = json['token'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['userName'] = userName;
    data['password'] = password;
    data['token'] = token;
    return data;
  }
}
