import 'package:finneygo/network/endpoints.dart';
import 'package:finneygo/network/requests.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AuthRepository with HTTPRequests {
  final _hive = Hive.box("myBox");
  
  Future<String?> sendOtp(Map<String, dynamic> data) async {
    final res = await postRequest(
      url: apiEndpoint(ApiEndpoints.sendOtp),
      payload: data,
    );

    if (res != null) return res["verId"];
    return null;
  }

  Future<String?> verifyOtp(Map<String, dynamic> data) async {
    final res = await postRequest(
      url: apiEndpoint(ApiEndpoints.verifyOtp),
      payload: data,
    );

    if (res != null) {
      _hive.put("authToken", res["authToken"]);
      _hive.put("refreshToken", res["refreshToken"]);
      return res["type"];
    }

    return null;
  }
}
