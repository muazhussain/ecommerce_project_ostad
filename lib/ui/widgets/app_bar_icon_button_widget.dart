import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class AppBarIconButton extends StatelessWidget {
  const AppBarIconButton({
    super.key,
    required this.iconData,
    required this.onTap,
  });

  final IconData iconData;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      splashColor: primaryColor,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 4,
        ),
        child: CircleAvatar(
          backgroundColor: greyColor.withOpacity(0.2),
          radius: 18,
          child: Icon(
            size: 16,
            iconData,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
