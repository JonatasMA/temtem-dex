import 'dart:convert';

import 'package:http/http.dart' as http;

class RequestTemtem {
  static String url = 'https://temtem-api.mael.tech/api/';
  static Future fetchTemtem() async {
    var response = await http.get(Uri.parse('${url}temtems'));

    return jsonDecode(response.body);
  }

  static Future fetchWeaknesses() async {
    var response = await http.get(Uri.parse('${url}weaknesses'));

    return jsonDecode(response.body);
  }
}
