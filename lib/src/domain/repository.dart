import 'dart:io';

import 'package:flexfit/src/domain/entities.dart';

abstract class AuthRepository {
  Future<User> signIn(String email, String password);
  Future<User> signUp(String username, String email, String password);
}


abstract class ImageRepository{
  Future<String> uploadImage(File image, String userId);
  Future<String> fetchImageUrl(String userId);
}