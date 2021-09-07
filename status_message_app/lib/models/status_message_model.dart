/// Category : "Funny"
/// Message : "Teacher: Why are you so late?Student: There was someone who lost a hundred dollar bill!Teacher: Oh, that is nice. Were you helping him to find it?Student: No, I was standing on it "

class StatusMessageModel {
  String? _category;
  String? _message;

  String? get category => _category;
  String? get message => _message;

  StatusMessageModel({String? category, String? message}) {
    _category = category;
    _message = message;
  }

  StatusMessageModel.fromJson(dynamic json) {
    _category = json['Category'];
    _message = json['Message'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['Category'] = _category;
    map['Message'] = _message;
    return map;
  }

  @override
  String toString() {
    return 'StatusMessageModel(category:$category,message:$message)';
  }
}
