import 'package:status_message_app/models/status_message_model.dart';
import 'package:status_message_app/network/status_message_network.dart';

class StatusMessageHelper {
  final api = StatusMessageNetwork();
  Future<StatusMessageModel> getMessage(String value) {
    return api.getMessages(value);
  }
}
