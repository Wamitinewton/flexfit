import 'package:flexfit/src/domain/entities.dart';
import 'package:flexfit/src/domain/user_repository.dart';

class SignIn{
  final AuthRepository authRepository;
  SignIn(this.authRepository);

  Future<User> call(String email, String password) async {
    return await authRepository.signIn(email, password);
  }
}

class SignUp{
  final AuthRepository authRepository;
  SignUp(this.authRepository);
  
  Future<User> call(String email, String password, String userName) async {
    return await authRepository.signUp(email, password, userName);
  }
}