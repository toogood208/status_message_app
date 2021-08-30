import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:status_message_app/models/status_message_model.dart';

class StatusMessageNetwork {
  static const _apiKey = "fa4b5a36f1mshf9fbcc6b342562bp164f46jsn91462ad075fe";
  static const _baseUrl = "ajith-messages.p.rapidapi.com";
  static const Map<String, String> _headers = {
    "x-rapidapi-host": _baseUrl,
    "x-rapidapi-key": _apiKey,
    'useQueryString': 'true'
  };

  Future<StatusMessageModel> getMessages(String category) async {
    try {
      var url = Uri.https(
        'ajith-messages.p.rapidapi.com',
        '/getMsgs',
        {'category': '$category'},
      );
      final response = await http.get(url, headers: _headers);
      print(response.body);
      return StatusMessageModel.fromJson(json.decode(response.body));
    } on SocketException {
      throw "Cant see data";
    }
  }
}
