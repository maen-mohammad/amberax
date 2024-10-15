import 'package:dio/dio.dart';
import 'package:project_amber/core/user/user_data.dart';

class Services {
  static String ip = 'http://192.168.43.115:8000/';
  static String baseUrl = 'http://192.168.43.115:8000/api/';
  final Dio dio = new Dio();
  final user = UserData.myUser;

  Future<Map<String, dynamic>> loginService(
      {required String endpoint,
      required String email,
      required String password}) async {
    print(email + '  ' + password);
    var response = await dio.post(
      baseUrl + endpoint,
      queryParameters: {
        'email': email,
        'password': password,
      },
    );
    print(response.toString());
    return response.data;
  }

  Future<Map<String, dynamic>> post(
      {required String endurl, required var body}) async {
    print(body.toString());
    var response = await dio.post(baseUrl + endurl,
        queryParameters: body,
        options: Options(headers: {
          'Authorization': 'Bearer ${user.token}',
        }));

    // print(response.data);
    return response.data;
  }

  Future<Map<String, dynamic>> post1(
      {required String endurl, required var body}) async {
    FormData formData = FormData.fromMap({
      'id': body['id'],
      'client_name': body['client_name'],
      'address': body['address'],
      'phone': body['phone'],
      'id_photo': await MultipartFile.fromFile(user.image),
    });
    var response = await dio.post(baseUrl + endurl,
        data: formData,
        options: Options(headers: {
          'Authorization': 'Bearer ${user.token}',
        }));
    print(response.data);

    return response.data;
  }

  Future<Map<String, dynamic>> post2(
      {required String endurl, required var body}) async {
    FormData formData = FormData.fromMap({
      'name': body['name'],
      'email': body['email'],
      'password': body['password'],
      'address': body['address'],
      'photo': await MultipartFile.fromFile(body['photo']),
    });
    var response = await dio.post(baseUrl + endurl,
        data: formData,
        options: Options(headers: {
          'Authorization': 'Bearer ${user.token}',
        }));
    print(response.data);

    return response.data;
  }

  Future<Map<String, dynamic>> post3(
      {required String endurl, required var body}) async {
    FormData formData = FormData.fromMap({
      'id': body['id'],
      'name': body['name'],
      'email': body['email'],
      'password': body['password'],
      'address': body['address'],
      'photo': await MultipartFile.fromFile(body['photo']),
    });
    var response = await dio.post(baseUrl + endurl,
        data: formData,
        options: Options(headers: {
          'Authorization': 'Bearer ${user.token}',
        }));
    print(response.data);

    return response.data;
  }
}
