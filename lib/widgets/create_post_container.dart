import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone/models/models.dart';

class CreatePostContainer extends StatelessWidget {
  const CreatePostContainer({
    Key? key,
    required this.currentUser,
  }) : super(key: key);

  final User currentUser;

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
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
        color: Colors.orangeAccent,
        child: Column(
          children: [
            Row(
              children: [
                ProfileAvatar(imageurl: currentUser.imageUrl),
                const SizedBox(width: 20),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText:
                          'Aynen düşündüklerin çok önemli\n Bizimle paylaşmak ister misin?',
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 10,
              thickness: 0.5,
            ),
            SizedBox(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () => print('Live'),
                    icon: const Icon(
                      Icons.video_call,
                      color: Colors.redAccent,
                    ),
                    label: const Text('live'),
                  ),
                  const VerticalDivider(width: 8),
                  ElevatedButton.icon(
                    onPressed: () => print('Photo'),
                    icon: const Icon(
                      Icons.photo_library_rounded,
                      color: Colors.greenAccent,
                    ),
                    label: const Text('Photo'),
                  ),
                  const VerticalDivider(width: 8),
                  ElevatedButton.icon(
                    onPressed: () => print('Rom'),
                    icon: const Icon(
                      Icons.video_call,
                      color: Colors.purpleAccent,
                    ),
                    label: const Text('Room'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
