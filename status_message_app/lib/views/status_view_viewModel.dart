import 'dart:async';

import 'package:stacked/stacked.dart';
import 'package:status_message_app/network/status_message_helper.dart';

class StatusMessageViewModel extends FutureViewModel<String?> {
  final _helper = StatusMessageHelper();
  late Future<String?> _message;
  get message => _message;
  var _categories = [
    "love",
    "funny",
    "quotes",
    "random",
    "friendship",
    "birthday",
    "sad",
    "sweet"
  ];

  Future<String?> getMessage(String value) {
    _message = _helper.getMessage(value).then((value) => value.message);
    notifyListeners();
    return _message;
  }

  get categories => _categories;

  @override
  Future<String?> futureToRun() => getMessage(categories[2]);
}
