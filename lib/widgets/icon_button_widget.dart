import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  IconData icon;
  double size;
  Color color;

  IconButtonWidget(
    this.icon,
    this.size,
    this.color,
  );

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        icon,
        size: size,
        color: color,
      ),
    );
  }
}
