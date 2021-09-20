import 'dart:convert';
import 'package:http/http.dart' as http;

class SendLikeApi {
  final String url =
      'https://scsy.in/schoolbuddy/schoolbuddy/public/api/App/school/';
  postData(likeData, apiUrl) async {
    var fullUrl = url + apiUrl;
    return await http.post(
      Uri.parse(fullUrl),
      body: jsonEncode(likeData),
      headers: _setHeader(),
    );
  }

  _setHeader() =>
      {'Content-type': 'application/json', 'Accept': 'application/json'};
}
