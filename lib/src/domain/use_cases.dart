import 'dart:io';

import 'package:flexfit/src/domain/entities.dart';

import 'package:flexfit/src/domain/repository.dart';

class SignIn {
  final AuthRepository authRepository;
  SignIn(this.authRepository);

  Future<User> call(String email, String password) async {
    return await authRepository.signIn(email, password);
  }
}

class SignUp {
  final AuthRepository authRepository;
  SignUp(this.authRepository);

  Future<User> call(String email, String password, String userName) async {
    return await authRepository.signUp(email, password, userName);
  }
}

class FetchImageUrl {
  final ImageRepository repository;
  FetchImageUrl(this.repository);

  Future<String> call(String userId) async {
    return await repository.fetchImageUrl(userId);
  }
}


class UploadImage {
  final ImageRepository repository;

  UploadImage(this.repository);

  Future<String> call(File image, String userId) async {
    return await repository.uploadImage(image, userId);
  }
}

