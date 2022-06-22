import 'package:dio/dio.dart';
import '../models/user.dart';

class AuthService {
  late User user;
  late String token;
  final _dio = Dio();

  Future<String> signup(User user) async {
    try {
      Response res = await _dio.post(
          "https://coded-pets-api-auth.herokuapp.com",
          data: user.toJson());
      token = res.data["token"];
      print(token);
    } on DioError catch (error) {
      print("error");
    }
    return token;
  }
}
