// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:facebook_clone/config/palette.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    Key? key,
    required this.icons,
    required this.onTab,
    required this.selectedIndex,
    this.isBottomIndicator = false,
  }) : super(key: key);

  final List<IconData> icons;
  final Function(int) onTab;
  final int selectedIndex;
  final bool isBottomIndicator;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
        border: isBottomIndicator
            ?  const Border(
                bottom: BorderSide(
                  color: Palette.facebookBlue,
                  width: 3,
                ),
              )
            : const Border(
                top: BorderSide(
                  color: Palette.facebookBlue,
                  width: 3,
                ),
              ),
      ),
      tabs: icons
          .asMap()
          .map(
            (i, e) => MapEntry(
              i,
              Tab(
                icon: Icon(
                  e,
                  color: i == selectedIndex
                      ? Palette.facebookBlue
                      : Colors.black45,
                  size: 30,
                ),
              ),
            ),
          )
          .values
          .toList(),
      onTap: onTab,
    );
  }
}
