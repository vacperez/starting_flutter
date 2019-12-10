import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flutter_app/model_property.dart';

String url = 'http://192.168.29.4:8080/properties';

Future<List<Property>> getAllProperties() async {
  final response = await http.get(url);
  print(response.body);
  return allPostsFromJson(response.body);
}