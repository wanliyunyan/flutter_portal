import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class  Counter with ChangeNotifier {
  int value = 0;
  bool _isFetching = false;
  String _jsonResonse = "";
  String _dataUrl = "https://reqres.in/api/users?per_page=20";
  void increment() {
    value++;
    notifyListeners();
  }
  int get getText => value;
  bool get isFetching => _isFetching;
  Future<void> fetchData() async {
    _isFetching = true;
    notifyListeners();
    var response = await http.get(_dataUrl);
    if (response.statusCode == 200) {
      _jsonResonse = response.body;
    }

    _isFetching = false;
    notifyListeners();
  }
  List<dynamic> getResponseJson() {
    if (_jsonResonse.isNotEmpty) {
      Map<String, dynamic> json = jsonDecode(_jsonResonse);
      // print(json['data']['avatar']);
      return json['data'];
    }
    return null;
  }
}