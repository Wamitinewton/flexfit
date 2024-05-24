
import 'package:flexfit/src/data/data_sources.dart';
import 'package:flexfit/src/domain/entities.dart';
import 'package:flexfit/src/domain/repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({required this.remoteDataSource});

  @override
  Future<User> signIn(String email, String password) async {
    final userModel = await remoteDataSource.signIn(email, password);
    return User(
        id: userModel.id, email: userModel.email, token: userModel.token);
  }

  @override
  Future<User> signUp(String email, String userName, String password) async {
    final userModel = await remoteDataSource.signUp(userName, email, password);
    return User(
        id: userModel.id,
        userName: userModel.userName,
        email: userModel.email,
        password: userModel.password);
  }
}

// class ImageRepositoryImpl implements ImageRepository {
//   final ImageRemoteDataSource remoteDataSource;

//   ImageRepositoryImpl({required this.remoteDataSource});
//   @override
//   Future<String> uploadImage(File image, String userId) async {
//     return await remoteDataSource.uploadImage(image, userId);
//   }

//   @override
//   Future<String> fetchImageUrl(String userId) async {
//     return await remoteDataSource.fetchImageUrl(userId);
//   }
// }
