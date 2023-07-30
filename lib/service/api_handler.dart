import 'dart:convert';
import '../model/posts.dart';
import 'package:http/http.dart' as http;

Future<Post>? fetchPosts() async {
  final response = await http.get(Uri.parse("https://dummyjson.com/posts"));
  var data = jsonDecode(response.body);
  // var tempList = [];
  // for (var v in data) {
  //   tempList.add(v);
  // }
  // print(tempList);
  if (response.statusCode == 200) {
    var myPost = Post.fromJson(data);
    return myPost;
    //  Post.postsFromSnapshot(tempList);
  } else {
    throw Exception('Failed to load products');
  }
}
