import 'dart:convert';
import 'package:cat_facts/models/model_cat_facts.dart';
import 'package:http/http.dart' as http;

const baseURL = 'https://catfact.ninja/facts';

Future<CatFacts> httpGetFacts() async {
  final response = await http.get(Uri.parse(baseURL));

  if (response.statusCode == 200) {
    return CatFacts.fromJson(jsonDecode(response.body));
  } else {
    throw Exception();
  }
}