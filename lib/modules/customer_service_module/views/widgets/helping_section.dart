import 'package:customer_service/core/constatnts/app_colors.dart';
import 'package:customer_service/core/utils/styles.dart';
import 'package:customer_service/data/common_model.dart';
import 'package:customer_service/modules/customer_service_module/controllers/customer_service_controller.dart';
import 'package:customer_service/modules/help_faqs_module/controllers/customer_service_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HelpingSection extends StatelessWidget {
  const HelpingSection(
      {super.key, required this.helpingSectionModel, required this.index});
  final CommonModel helpingSectionModel;
  final int index;
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
          GestureDetector(
            onTap: () {
              index == 0
                  ? Get.find<CustomerServiceController>().navigateToContactUs()
                  : Get.find<CustomerServiceController>().navigateToHelpFaqs();
            },
            child: const CircleAvatar(
              backgroundColor: AppColors.salmon,
              radius: 15,
              child: Icon(
                Icons.navigate_next_rounded,
                size: 30,
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
