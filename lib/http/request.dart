import 'dart:convert';

import 'package:http/http.dart' as http;

class RequestTemtem {
  static Future fetchTemtem() async {
    var response =
        await http.get(Uri.parse('https://temtem-api.mael.tech/api/temtems'));

    return jsonDecode(response.body);
  }
}
