part of 'services.dart';

class HomeServices {
  static Future<ApiReturnValue<List<TokoModel>>> getListToko() async {
    try {
      var response = await Dio(BaseOptions(
        connectTimeout: 20 * 1000,
        receiveTimeout: 20 * 1000,
      )).get(BASE_URL + "list-toko");
      final data = response.data;
      List<TokoModel> isi =
          (data as Iterable).map((e) => TokoModel.fromJson(e)).toList();
      return ApiReturnValue(value: isi);
    } on DioError catch (e) {
      print(e.message);
      return ApiReturnValue(message: "Ambil Data Ke Server Gagal");
    }
  }
  static Future<ApiReturnValue<String>> deleteTable(String url) async {
    try {
      var response = await Dio(BaseOptions(
        connectTimeout: 20 * 1000,
        receiveTimeout: 20 * 1000,
      )).delete(BASE_URL + "clear-table/" + url );
      final data = response.data["response"];
      return ApiReturnValue(value: data);
    } on DioError catch (e) {
      print(e.message);
      return ApiReturnValue(message: "Gagal Bersihkan Tabel Database");
    }
  }
}
