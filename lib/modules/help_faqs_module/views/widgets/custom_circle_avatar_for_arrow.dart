import 'package:customer_service/core/constatnts/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCircleAvatarForArrow extends StatelessWidget {
  const CustomCircleAvatarForArrow({
    super.key,
    required this.icon
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      backgroundColor: AppColors.salmon,
      radius: 14,
      child: Center(
        child: Icon(
  icon,
          color: AppColors.white,
        ),
      ),
    );
  }
}
