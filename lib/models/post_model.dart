import 'package:facebook_clone/models/user_model.dart';

class Post {
  Post({
    required this.caption,
    required this.comments,
    required this.likes,
    required this.shares,
    required this.timeAgo,
    required this.user,
    required this.imageUrl,
  });

  final String caption;
  final int comments;
  late final String imageUrl;
  final int likes;
  final int shares;
  final String timeAgo;
  final User user;
}
