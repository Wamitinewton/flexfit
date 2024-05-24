// import 'dart:convert';
// import 'dart:io';

// import 'package:http/http.dart' as http;

// class ImageRemoteDataSource {
//   final http.Client client;

//   ImageRemoteDataSource({required this.client});

//   Future<String> uploadImage(File image, String userId) async {
//     final uri = Uri.parse('');
//     final request = http.MultipartRequest('POST', uri)
//       ..files.add(await http.MultipartFile.fromPath('image', image.path));

//     final streamedResponse = await request.send();
//     final response = await http.Response.fromStream(streamedResponse);

//     if (response.statusCode == 200) {
//       final data = json.decode(response.body);
//       return data['imageUrl'];
//     } else {
//       throw Exception('Failed to upload picture');
//     }
//   }

//   Future<String> fetchImageUrl(String userId) async {
//     final uri = Uri.parse('');

//     final response = await client.get(uri);
//     if (response.statusCode == 200) {
//       final data = json.decode(response.body);
//       return data['imageUrl'];
//     } else {
//       throw Exception('Failed to fetch image');
//     }
//   }
// }
