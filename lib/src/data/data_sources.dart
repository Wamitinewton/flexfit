import 'dart:convert';

import 'package:flexfit/src/models/auth_data.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDataSource {
  final http.Client client;

  AuthRemoteDataSource({required this.client});

  Future<AuthModel> signIn(String email, String password) async {
    final response = await client.post(
      Uri.parse(''),
      body: json.encode({'email': email, 'password': password}),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200) {
      return AuthModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to sign in');
    }
  }

  Future<AuthModel> signUp(String userName, String email, String password) async {
    final response = await client.post(
      Uri.parse(''),
      body: json.encode({'userName': userName, 'email': email, 'password':password}),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200) {
      return AuthModel.fromJson(json.decode(response.body));
    } else{
      throw Exception("Failed");
    }
  }
}
