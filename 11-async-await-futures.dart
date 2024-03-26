void main() async {
  // Futures --> like promises in JavaScript
  // can have uncompleted or completed state
  fetchPost().then((value) {
    print(value.title);
    print(value.userId);
  });

  final post = await fetchPost();
  print("async-await: ${post.title}");
}

Future<Post> fetchPost() {
  const delay = Duration(seconds: 3);

  return Future.delayed(delay, () {
    return new Post('my post', 123);
  });
}

class Post {
  String title;
  int userId;

  Post(this.title, this.userId);
}
