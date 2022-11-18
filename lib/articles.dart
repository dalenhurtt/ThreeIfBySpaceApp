import 'package:wordpress_api/wordpress_api.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:dio/dio.dart';

class Articles {
  static final Dio _dio = Dio();
  static final WordPressAPI _api = WordPressAPI('threeifbyspace.net', dio: _dio);

  // Posts are returned as a list of objects. These objects represent each post.
  // Attributes of the objects: https://developer.wordpress.org/rest-api/reference/posts/

  // This variable will be used in the future for implementing caching
  static List<Post>? _posts;

  Articles()
  {
    // Default cache length is 7 days
    _dio.interceptors.add(DioCacheManager(CacheConfig(baseUrl: "threeifbyspace.com")).interceptor);
  }

  static Future<List<Post>?> getPosts() async {
    if (_posts == null) await _updatePosts();
    return _posts;
  }

  // Fetches posts from the wordpress app. This should be used with a cache
  // implementation in the future
  static Future<void> _updatePosts() async {
    final WPResponse res = await _api.posts.fetch();
    _posts = res.data;
  }

  // Find post by ID
  static Future<Post?> getPostByID(int? id) async {
    if (_posts == null) await _updatePosts();

    Post? post = _posts?.firstWhere((element) => element.id == id);

    return post;
  }
}
