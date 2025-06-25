import 'package:customer_service/core/constatnts/app_colors.dart';
import 'package:customer_service/core/utils/styles.dart';
import 'package:customer_service/core/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_sharp,
              color: AppColors.black54,
            ),
            onPressed: () {
              Navigator.pop(context); // back navigation
            },
          ),
          title: Text(
            "Help & FAQS",
            style: Styles.textStyle18,
          ),
        ),
        Text(
          "How Can We Help You?",
          style: Styles.textStyle16,
        ),
        const SizedBox(
          height: 10,
        ),
        const CustomDivider(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
