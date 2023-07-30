class Post {
  List<Posts> posts;
  int total;
  int skip;
  int limit;

  Post({
    required this.posts,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      posts: (json['posts'] as List)
          .map((dynamic e) => Posts.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'],
      skip: json['skip'],
      limit: json['limit'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['posts'] = this.posts.map((v) => v.toJson()).toList();
    data['total'] = this.total;
    data['skip'] = this.skip;
    data['limit'] = this.limit;
    return data;
  }
}

class Posts {
  int id;
  String title;
  String body;
  int userId;
  List<dynamic> tags;
  int reactions;

  Posts({
    required this.id,
    required this.title,
    required this.body,
    required this.userId,
    required this.tags,
    required this.reactions,
  });

  factory Posts.fromJson(Map<String, dynamic> json) {
    return Posts(
      id: json['id'],
      title: json['title'],
      body: json['body'],
      userId: json['userId'],
      tags: json['tags'],
      reactions: json['reactions'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    data['userId'] = this.userId;
    data['tags'] = this.tags;
    data['reactions'] = this.reactions;
    return data;
  }
}
