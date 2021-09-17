import 'dart:convert';
import 'package:http/http.dart' as http;

class CallApi {
  final String _url = "https://scsy.in/schoolbuddy/schoolbuddy/public/api/App/";
  postData(data, apiUrl) async {
    var fullUrl = _url + apiUrl;
    return await http.post(
      Uri.parse(fullUrl),
      body: jsonEncode(data),
      headers: _setHeader(),
    );
  }

  _setHeader() =>
      {'Content-type': 'application/json', 'Accept': 'application/json'};
}
