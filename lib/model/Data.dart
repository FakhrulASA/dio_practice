class Data {
  Data({
      this.translatedText,});

  Data.fromJson(dynamic json) {
    translatedText = json['translatedText'];
  }
  String? translatedText;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['translatedText'] = translatedText;
    return map;
  }

}