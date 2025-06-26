import 'package:customer_service/modules/help_faqs_module/views/widgets/expansion_tile_for_contact_us.dart';
import 'package:customer_service/modules/help_faqs_module/views/widgets/help_faqs_body.dart';
import 'package:flutter/material.dart';

class ContactBody extends StatelessWidget {
  const ContactBody({
    super.key,
    required this.widget,
  });

  final HelpFaqsBody widget;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
          children: List.generate(
              5,
              (index) => ExpansionTileForContactUs(
                    index: index,
                    contactUsModel: widget.contact[index],
                  ))),
    );
  }
}
