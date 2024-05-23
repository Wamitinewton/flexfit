class AuthModel {
  String? id;
  String? email;
  String? userName;
  String? password;
  String? token;
  String? imageUrl;

  AuthModel(
      {this.id,
      this.imageUrl,
      this.email,
      this.password,
      this.token,
      this.userName});

  AuthModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    userName = json['userName'];
    password = json['password'];
    token = json['token'];
    imageUrl = json['imageUrl'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['userName'] = userName;
    data['password'] = password;
    data['token'] = token;
    data['imageUrl'] = imageUrl;
    return data;
  }
}
