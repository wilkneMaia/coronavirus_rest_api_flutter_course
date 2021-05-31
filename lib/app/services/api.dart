import 'package:coronavirus_rest_api_flutter_course/app/services/api_keys.dart';
import 'package:flutter/foundation.dart';

class API {
  API({@required this.apikey});
  final String apikey;

  factory API.sandbox() => API(apikey: APIKeys.ncovSandboxKey);

  static final String host = "ncov2019-admin.firebaseapp.com";

  Uri tokenUri() => Uri(
    scheme: 'https',
    host: host,
    path: 'token',
  );
}
