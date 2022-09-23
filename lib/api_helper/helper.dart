import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models.dart';

class JsonPlaceHolderAPIHelper {
  //singleton class -- 1. create a private named constructor...
  //                -- 2. create on project with the reference of private named constructor...
  JsonPlaceHolderAPIHelper._();

  static final JsonPlaceHolderAPIHelper jsonPlaceHolderAPIHelper =
      JsonPlaceHolderAPIHelper._();

  String BASE_URL = 'https://jsonplaceholder.typicode.com';
  String END_POINT = '/posts/10';
  String MUL_END_POINT = '/posts';

  // Future<List<Post>?> fetchSinglePostData() async {
  //   http.Response request =
  //       await http.get(Uri.parse('https://corona.lmao.ninja/v2/states'));
  //
  //   // http.StreamedResponse response = await request.send();
  //
  //   if (request == 200) {
  //     print(request.body);
  //     List _js = jsonDecode((request.body));
  //     List<Post> post = _js.map((e) => Post.fromJSON(json: e)).toList();
  //     return post;
  //   } else {
  //     print(request.reasonPhrase);
  //   }
  //   return null;
  // }

  Future<List<Post>?> fetchMultiplePostData() async {
    http.Response _mul_Response = await http.get(Uri.parse('asset/data.json'));

    if (_mul_Response.statusCode == 200) {
      List _mul_JsonDecode = jsonDecode(_mul_Response.body);

      List<Post> _mul_post =
          _mul_JsonDecode.map((e) => Post.fromJSON(json: e)).toList();

      return _mul_post;
    }
    return null;
  }

  Future<List<Data>?> fetchMultiplePostData1() async {
    http.Response _res = await http.get(Uri.parse('asset/data1.json'));

    if (_res.statusCode == 200) {
      List _js = jsonDecode(_res.body);

      List<Data> _mul_post = _js.map((e) => Data.fromJSON(json: e)).toList();

      return _mul_post;
    }
    return null;
  }
}
