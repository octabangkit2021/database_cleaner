part of 'services.dart';

class LoginServices {
  static Future<ApiReturnValue<String>> doLogin(String username, String password) async {
    try {
      var response = await Dio(BaseOptions(
        connectTimeout: 20 * 1000,
        receiveTimeout: 20 * 1000,
      )).post(BASE_URL + "auth", data: {
        username: username,
        password: password
      });
      final data = response.data["response"];
      return ApiReturnValue(value: data);
    } on DioError catch (e) {
      print(e.message);
      return ApiReturnValue(message: "Ambil Data Ke Server Gagal");
    }
  }
}