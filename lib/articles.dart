import 'package:wordpress_api/wordpress_api.dart';

class Articles {
  static final WordPressAPI _api = WordPressAPI('threeifbyspace.net');

  // Posts are returned as a list of objects. These objects represent each post.
  // Attributes of the objects: https://developer.wordpress.org/rest-api/reference/posts/

  // This variable will be used in the future for implementing caching
  static dynamic _posts;

  static dynamic getPosts() async {
    final WPResponse res = await _api.posts.fetch();
    _posts ??= res.data;
    return _posts;
  }

  // Find post by ID
  static dynamic getPostByID(int id) {
    final post = _posts.firstWhere((element) => element.id == id, orElse: () {
      return null;
    });
    return post;
  }
}
