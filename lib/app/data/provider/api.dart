import 'dart:convert';
import '../model/model.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:getxstandard/app/data/model/model.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com/posts/';

class MyApiClient {
  final http.Client httpClient;
  MyApiClient({required this.httpClient});

  Future<List<Model>> getModel() async {
    await Future.delayed(Duration(seconds: 2));

    return [];
  }
}
