import 'package:http/http.dart' as http;

var login = Uri.parse('https://reqres.in/api/login');
var userList = Uri.parse('https://reqres.in/api/users?page=1');

class Request {
  final Uri url;
  final dynamic body;

  Request({this.url, this.body});

  Future<http.Response> post() {
    return http.post(login, body: body).timeout(Duration(minutes: 2));
  }

  Future<http.Response> get() {
    return http.get(userList).timeout(Duration(minutes: 2));
  }
}
