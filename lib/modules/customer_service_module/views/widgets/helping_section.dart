import 'package:customer_service/core/constatnts/app_colors.dart';
import 'package:customer_service/core/utils/styles.dart';
import 'package:customer_service/data/common_model.dart';
import 'package:flutter/material.dart';

class HelpingSection extends StatelessWidget {
  const HelpingSection({super.key, required this.helpingSectionModel});
  final CommonModel helpingSectionModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                helpingSectionModel.title,
                style: Styles.textStyle18.copyWith(color: Colors.black),
              ),
              Text(helpingSectionModel.description,
                  style: Styles.textStyle14
                      .copyWith(color: Colors.black.withOpacity(0.7)))
            ],
          ),
          const Spacer(),
          const CircleAvatar(
            backgroundColor: AppColors.salmon,
            radius: 15,
            child: Icon(
              Icons.navigate_next_rounded,
              size: 30,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
