import 'package:facebook_clone/models/user_model.dart';

class Story {
  Story({
    required this.user,
    required this.imageUrl,
    required this.isViewed,
  });

  final String imageUrl;
  final bool isViewed;
  final User user;
}
