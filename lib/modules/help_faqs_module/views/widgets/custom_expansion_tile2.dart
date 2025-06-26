import 'package:customer_service/core/constatnts/app_colors.dart';
import 'package:customer_service/core/utils/styles.dart';
import 'package:customer_service/modules/help_faqs_module/views/widgets/custom_circle_avatar_for_arrow.dart';
import 'package:flutter/material.dart';

class CustomExpansionTile2 extends StatefulWidget {
  const CustomExpansionTile2({
    super.key,
  });

  @override
  State<CustomExpansionTile2> createState() => _CustomExpansionTile2State();
}

class _CustomExpansionTile2State extends State<CustomExpansionTile2> {
  bool _customIcon = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ExpansionTile(
        onExpansionChanged: (value) {
          setState(() {
            _customIcon = value;
          });
        },
        trailing: _customIcon
            ? const CustomCircleAvatarForArrow(
                icon: Icons.keyboard_arrow_up_rounded,
              )
            : const CustomCircleAvatarForArrow(
                icon: Icons.keyboard_arrow_down_rounded,
              ),
        tilePadding: EdgeInsets.zero,
        collapsedShape: const RoundedRectangleBorder(
          side: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.zero,
        ),
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.zero,
        ),
        title: Text("Lorem ipsum dolor sit amet?",
            style: Styles.textStyle16Bold.copyWith(color: AppColors.salmon)),
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
