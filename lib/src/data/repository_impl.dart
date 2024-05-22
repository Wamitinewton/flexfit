import 'package:flexfit/src/data/data_sources.dart';
import 'package:flexfit/src/domain/entities.dart';
import 'package:flexfit/src/domain/user_repository.dart';

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
