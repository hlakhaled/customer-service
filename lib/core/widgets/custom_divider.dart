import 'package:customer_service/core/constatnts/app_colors.dart';
import 'package:flutter/material.dart';


class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 28),
      child: Divider(
        color: AppColors.terracotta,
        thickness: 0.4,
      ),
    );
  }
}
