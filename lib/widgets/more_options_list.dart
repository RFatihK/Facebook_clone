// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:facebook_clone/widgets/widgets.dart';

import '../config/palette.dart';
import '../models/models.dart';

class MoreOptionsList extends StatelessWidget {
  MoreOptionsList({
    Key? key,
    required this.currentUser,
  }) : super(key: key);

  final User currentUser;

  final List<List> _moreOptionsList = [
    [MdiIcons.shieldAccount, Colors.deepPurple, 'COVİD-19 bilgileri'],
    [MdiIcons.accountMultiple, Colors.cyan, 'Arkadaşlar'],
    [MdiIcons.facebookMessenger, Palette.facebookBlue, 'Messanger'],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 280),
      child: ListView.builder(
        itemCount: 1 + _moreOptionsList.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: UserCard(user: currentUser),
            );
          }
          final List option = _moreOptionsList[index - 1];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: _Option(
              icon: option[0],
              color: option[1],
              label: option[2],
            ),
          );
        },
      ),
    );
  }
}

class _Option extends StatelessWidget {
  const _Option({
    Key? key,
    required this.icon,
    required this.color,
    required this.label,
  }) : super(key: key);

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('tıklandı'),
      child: Row(
        children: [
          Icon(
            icon,
            size: 38,
            color: color,
          ),
          const SizedBox(width: 6),
          Flexible(
            child: Text(
              label,
              style: const TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
