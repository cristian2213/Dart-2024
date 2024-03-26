import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() async {
  final post = await fetchPost();
  print(post.title);
  print(post.userId);
}

Future<Post> fetchPost() async {
  var uri = Uri.http("jsonplaceholder.typicode.com", "posts/1");
  final response = await http.get(uri);
  Map<String, dynamic> data = convert.jsonDecode(response.body);
  return new Post(data['title'], data['userId']);
}

class Post {
  String title;
  int userId;

  Post(this.title, this.userId);
}
