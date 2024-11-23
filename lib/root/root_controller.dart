import 'package:finneygo/network/endpoints.dart';
import 'package:finneygo/network/requests.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final rootProvider = FutureProvider((ref) => _RootController().checkToken());

class _RootController with HTTPRequests {
  Future<bool> checkToken() async {
    final res = await getRequest(apiEndpoint(ApiEndpoints.verifyToken));

    if (res != null) return true;
    return false;
  }
}
