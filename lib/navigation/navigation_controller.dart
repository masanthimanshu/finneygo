import 'package:finneygo/network/endpoints.dart';
import 'package:finneygo/network/requests.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final navigationProvider = FutureProvider((ref) => _Controller().checkToken());

class _Controller with HTTPRequests {
  Future<bool> checkToken() async {
    final res = await getRequest(apiEndpoint(ApiEndpoints.verifyToken));

    if (res != null) return true;
    return false;
  }
}
