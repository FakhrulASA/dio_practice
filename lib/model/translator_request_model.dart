import 'dart:convert';

import 'package:dio/dio.dart';

class RequestModel {
  String sourceLn;
  String targetLn;
  String text;

  RequestModel(this.sourceLn, this.targetLn, this.text);

  Map<String, dynamic> toMap() {
    return {
      'source_language': sourceLn,
      'target_language': targetLn,
      'text': text,
    };
  }

}
