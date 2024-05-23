import 'package:flexfit/src/controllers/auth_controller.dart';
import 'package:flexfit/src/controllers/profile_image_controller.dart';
import 'package:flexfit/src/data/data_sources.dart';
import 'package:flexfit/src/data/image_remote_datasource.dart';
import 'package:flexfit/src/data/repository_impl.dart';
import 'package:flexfit/src/domain/use_cases.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AppBindings extends Bindings {
  @override
  void dependencies() {
    final client = http.Client();
    final authRemoteDataSource = AuthRemoteDataSource(client: client);
    final imageRemoteDataSource = ImageRemoteDataSource(client: client);
    final authRepository =
        AuthRepositoryImpl(remoteDataSource: authRemoteDataSource);
    final imageRepository =
        ImageRepositoryImpl(remoteDataSource: imageRemoteDataSource);

    Get.put(AuthController(
        signInUseCase: SignIn(authRepository),
        signUpUseCase: SignUp(authRepository)));

    Get.put(ImageController(
        fetchImageUrlUseCase: FetchImageUrl(imageRepository),
        uploadImageUseCase: UploadImage(imageRepository)));
  }
}
