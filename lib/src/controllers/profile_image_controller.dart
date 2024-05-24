// import 'dart:io';

// import 'package:flexfit/src/controllers/auth_controller.dart';
// import 'package:flexfit/src/domain/use_cases.dart';
// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';

// class ImageController extends GetxController {
//   final UploadImage uploadImageUseCase;
//   final FetchImageUrl fetchImageUrlUseCase;
//   final AuthController _authController = Get.find();

//   var imageUrl = ''.obs;
//   ImageController(
//       {required this.fetchImageUrlUseCase, required this.uploadImageUseCase});

//   Future<void> pickImage() async {
//     final picker = ImagePicker();
//     final pickedFile = await picker.pickImage(source: ImageSource.gallery);

//     if (pickedFile != null) {
//       final image = File(pickedFile.path);
//       final userId = _authController.user.value!.id;
//       if (userId != null) {
//         final url = await uploadImageUseCase.call(image, userId);
//         imageUrl.value = url;
//       }
//     }
//   }

//   Future<void> loadProfileImage() async {
//     final userId = _authController.user.value!.id;
//     if (userId != null) {
//       imageUrl.value = await fetchImageUrlUseCase.call(userId);
//     }
//   }
// }

