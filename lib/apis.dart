import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http_sample_numbers_api/number_to_fact/number_to_fact.dart';

Future<NumberToFact> getNumberFacts({required String number}) async {
  final _response =
      await http.get(Uri.parse('http://numbersapi.com/$number?json'));
      final _jsonbody = jsonDecode(_response.body) as Map<String, dynamic>;
      //print(_jsonbody);
      final _data = NumberToFact.fromJson(_jsonbody);
      return _data;
  // print(_response.body);
  // print(_response.statusCode);
}
