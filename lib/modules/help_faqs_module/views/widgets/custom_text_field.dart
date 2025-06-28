import 'package:customer_service/core/constatnts/app_colors.dart';
import 'package:customer_service/core/constatnts/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        decoration: InputDecoration(
            suffixIcon: const CircleAvatar(
              backgroundColor: AppColors.salmon,
              child: Icon(
                Icons.filter_list,
                color: AppColors.terracotta,
              ),
            ),
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: AppColors.beige)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: AppColors.beige)),
            focusColor: AppColors.salmon,
            fillColor: AppColors.beige,
            hintText: "Search",
            hintStyle: Styles.textStyle16.copyWith(color: AppColors.brownRosy)),
      ),
    );
  }
}
