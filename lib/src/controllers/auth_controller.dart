import 'package:flexfit/src/domain/entities.dart';
import 'package:flexfit/src/domain/use_cases.dart';
import 'package:flexfit/src/presentation/home/home_view.dart';
import 'package:flexfit/src/routes/names.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController userName = TextEditingController();
  final TextEditingController pwd = TextEditingController();
  final TextEditingController cfmpwd = TextEditingController();

  final SignIn signInUseCase;
  final SignUp signUpUseCase;
  var user = Rxn<User>();
  var isLoading = false.obs;
  AuthController({required this.signInUseCase, required this.signUpUseCase});

  Future<void> signIn(String email, String password) async {
    try {
      isLoading.value = true;
      user.value = await signInUseCase.call(email, password);
      Get.offAllNamed(AppRoutes.application);
    } catch (e) {
      Get.snackbar('Error', 'Failed to sign up');
      print(e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> signUp(String email, String userName, String password) async {
    try {
      isLoading.value = true;
      user.value = await signUpUseCase.call(email, password, userName);
      Get.offAllNamed(AppRoutes.application);
    } catch (e) {
      Get.snackbar('Error', 'Failed to sign in');
    } finally {
      isLoading.value = false;
    }
  }
}
