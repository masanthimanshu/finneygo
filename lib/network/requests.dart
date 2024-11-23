import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'endpoints.dart';
import 'interceptor.dart';

mixin HTTPRequests {
  final _baseOptions = BaseOptions(
    baseUrl: apiEndpoint(ApiEndpoints.baseUrl),
    headers: {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Account": "iZnfZHVLwN8XvFKKuq56UvNdDbX83rhq",
    },
  );

  Dio get _dioHandler {
    final dio = Dio(_baseOptions);
    dio.interceptors.add(DioInterceptor(dioHandler: dio));
    return dio;
  }

  @protected
  Future<Map<String, dynamic>?> getRequest(String url) async {
    debugPrint("url : $url");

    try {
      final res = await _dioHandler.get(url);
      if (res.statusCode! >= 200 && res.statusCode! <= 208) {
        return res.data;
      } else {
        debugPrint("Request failed with status code: ${res.statusCode}");
        return null;
      }
    } catch (e) {
      debugPrint("Error during GET request: $e");
      return null;
    }
  }

  @protected
  Future<Map<String, dynamic>?> postRequest({
    required Map<String, dynamic> payload,
    required String url,
  }) async {
    debugPrint("url : $url");
    debugPrint("data : $payload");

    try {
      final res = await _dioHandler.post(url, data: payload);
      if (res.statusCode! >= 200 && res.statusCode! <= 208) {
        return res.data;
      } else {
        debugPrint("Request failed with status code: ${res.statusCode}");
        return null;
      }
    } catch (e) {
      debugPrint("Error during POST request: $e");
      return null;
    }
  }

  @protected
  Future<Map<String, dynamic>?> deleteRequest(String url) async {
    debugPrint("url : $url");

    try {
      final res = await _dioHandler.delete(url);
      if (res.statusCode! >= 200 && res.statusCode! <= 208) {
        return res.data;
      } else {
        debugPrint("Request failed with status code: ${res.statusCode}");
        return null;
      }
    } catch (e) {
      debugPrint("Error during DELETE request: $e");
      return null;
    }
  }
}
