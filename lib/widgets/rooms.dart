import 'package:flutter/material.dart';
import '../models/user_model.dart';
import 'widgets.dart';
 
class Rooms extends StatelessWidget {
  const Rooms({
    super.key,
    required this.onlineUsers,
  });

  final List<User> onlineUsers;

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isdesktop(context);
    return Card(
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5 : 0),
      elevation: isDesktop ? 1 : 0,
      shape: isDesktop
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
          : null,
      child: Container(
        height: 60,
        color: Colors.transparent,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 4,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + onlineUsers.length,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: _CreateRoomButton(),
              );
            }
            final User user = onlineUsers[index - 1];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ProfileAvatar(
                imageurl: user.imageUrl,
                isActive: true,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({Key? key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => print('Oda Oluştur'),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        side: const BorderSide(width: 3),
        backgroundColor: Colors.blueAccent,
      ),
      child: const Row(
        children:  [
          /* ShaderMask(
            shaderCallback: (rect) =>
                Palette.createRoomGradient.createShader(rect),
            child: ), */
          Icon(Icons.video_call, size: 35, color: Colors.redAccent),
          SizedBox(width: 4),
          Text('Oda\noluştur'),
        ],
      ),
    );
  }
}
