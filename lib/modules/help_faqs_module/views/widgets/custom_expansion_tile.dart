
import 'package:customer_service/core/constatnts/app_colors.dart';
import 'package:customer_service/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile({
    super.key,
  });

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
        title: Text(
          "Lorem ipsum dolor sit amet?",
          style: Styles.textStyle16Bold
              .copyWith(color: AppColors.black),
        ),
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Proesent pellentesque congue lorem, vel tincidunt tortorplocerat a. Proin ac diam quam. Aenean in sagittis magna, utfeugiat diam.",
              style: Styles.textStyle12,
            ),
          )
        ],
      ),
    );
  }
}
