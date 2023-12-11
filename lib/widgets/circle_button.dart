import 'package:flutter/material.dart';

class CircleButtton extends StatelessWidget {
  const CircleButtton({
    super.key,
    required this.icon,
    required this.iconSize,
    required this.onPressed,
  });

  final IconData icon;
  final double iconSize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
        iconSize: iconSize,
        color: Colors.black45,
      ),
    );
  }
}
