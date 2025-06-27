import 'package:customer_service/core/constatnts/app_colors.dart';
import 'package:customer_service/core/utils/styles.dart';
import 'package:customer_service/core/widgets/custom_divider.dart';
import 'package:customer_service/data/common_model.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.commonModel, this.icon = false});
  final CommonModel commonModel;
  final bool icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_sharp,
              color: AppColors.black54,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: icon
              ? Row(
                  children: [
                    const SizedBox(
                      width: 60,
                    ),
                    const Icon(
                      Icons.support_agent,
                      color: AppColors.salmon,
                    ),
                    Text(
                      commonModel.title,
                      style: Styles.textStyle18,
                    ),
                  ],
                )
              : Text(
                  commonModel.title,
                  style: Styles.textStyle18,
                ),
        ),
        Text(
          commonModel.description,
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
