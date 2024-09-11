import 'dart:convert';

import 'package:api_assignment/model/posts_model.dart';
import 'package:api_assignment/networking/api_constant.dart';
import 'package:http/http.dart' as http;

mixin PostsApi on ApiConstant {
  //  display posts only if userId == 1.
  List<PostsModel> allPosts = [];
  Future<List<PostsModel>> displayPostsByUserId() async {
    // 1- Convert URL to URI
    final uri = Uri.parse('$baseUrl$postsEndpoint?userId=1');
    // 2- Send Request(GET, POST, PUT, DELETE)
    final response = await http.get(uri);
    // 3- Decode Response String to JSON(Map)
    final responseDecoded = jsonDecode(response.body);
    // 4- Convert JSON(Map) to Model(Object)
    for (var element in responseDecoded) {
      allPosts.add(PostsModel.fromJson(element));
    }
    return allPosts;
  }
}
