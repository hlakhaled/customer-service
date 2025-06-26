import 'package:customer_service/core/constatnts/app_colors.dart';
import 'package:customer_service/data/contact_us_model.dart';
import 'package:customer_service/modules/help_faqs_module/controllers/customer_service_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:url_launcher/url_launcher.dart';

class ExpansionTileForContactUs extends StatelessWidget {
  const ExpansionTileForContactUs(
      {super.key, required this.contactUsModel, required this.index});
  final int index;
  final ContactUsModel contactUsModel;

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        collapsedShape: const RoundedRectangleBorder(
          side: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.zero,
        ),
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.zero,
        ),
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: AppColors.salmon,
          child: Icon(
            contactUsModel.icon,
            color: AppColors.black,
          ),
        ),
        title: Text(
          contactUsModel.title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "Open ${contactUsModel.title}",
              style: const TextStyle(
                color: AppColors.salmon,
              ),
            ),
            trailing: const Icon(Icons.open_in_new, color: AppColors.salmon),
            onTap: () => index == 0
                ? Get.find<HelpFaqsController>().navigateToCustomerService()
                : _launchUrl(contactUsModel.describtion),
          )
        ],
      ),
    );
  }
}
