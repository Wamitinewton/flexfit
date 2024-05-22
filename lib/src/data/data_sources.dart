import 'dart:convert';

import 'package:flexfit/src/models/auth_data.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDataSource {
  final http.Client client;

  AuthRemoteDataSource({required this.client});

  Future<AuthModel> signIn(String email, String password) async {
    // final response = await client.post(
    //   Uri.parse(''),
    //   body: json.encode({'email': email, 'password': password}),
    //   headers: {'Content-Type': 'application/json'},
    // );
    final uri = Uri.parse('https://run.mocky.io/v3/5ad9d8fe-7bcb-49e9-87a1-a680c9ea7ce4');
    final response = await client.get(uri);

    if (response.statusCode == 200) {
      return AuthModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to sign in');
    }
  }

  Future<AuthModel> signUp(
      String userName, String email, String password) async {
    // final response = await client.post(
    //   Uri.parse(''),
    //   body: json
    //       .encode({'userName': userName, 'email': email, 'password': password}),
    //   headers: {'Content-Type': 'application/json'},
    // );
    final uri = Uri.parse('https://run.mocky.io/v3/5ad9d8fe-7bcb-49e9-87a1-a680c9ea7ce4');
    final response = await client.get(uri);
    if (response.statusCode == 200) {
      return AuthModel.fromJson(json.decode(response.body));
    } else {
      throw Exception("Failed");
    }
  }
}
