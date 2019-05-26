import 'package:http/http.dart' as http;

class ConnectUser {
  Future<String> getJSON() async {
    String url = "";
    http.Response response = await http.post(url);
  }

  connect() {
    return {
      "host": "auth.ateamrobotics.ca",
      "port": 1812,
      "secret": "!6544aburg"
    };
  }
}
