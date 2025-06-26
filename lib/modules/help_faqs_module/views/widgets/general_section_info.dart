import 'package:customer_service/core/widgets/custom_divider.dart';
import 'package:customer_service/modules/help_faqs_module/views/widgets/custom_expansion_tile.dart';
import 'package:customer_service/modules/help_faqs_module/views/widgets/custom_expansion_tile2.dart';
import 'package:customer_service/modules/help_faqs_module/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class GeneralSectionInfo extends StatelessWidget {
  const GeneralSectionInfo({super.key});
  List<Widget> buildExpansionTiles() {
    return List.generate(
      5,
      (index) => const Column(
        children: [
          CustomExpansionTile2(),
          CustomDivider(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          const CustomTextField(),
          const SizedBox(height: 20),
          const CustomDivider(),
          const CustomExpansionTile(),
          const CustomDivider(),
          ...buildExpansionTiles(),
        ],
      ),
    );
  }
}
