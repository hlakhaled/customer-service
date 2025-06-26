import 'package:customer_service/modules/help_faqs_module/views/widgets/custom_tab_bar.dart';
import 'package:customer_service/modules/help_faqs_module/views/widgets/general_section_info.dart';

import 'package:customer_service/modules/help_faqs_module/views/widgets/help_faqs_body.dart';
import 'package:flutter/material.dart';

class ItemsInTabBar extends StatelessWidget {
  const ItemsInTabBar({
    super.key,
    required this.tabController2,
    required this.widget,
  });

  final TabController tabController2;
  final HelpFaqsBody widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTabBar(
          tabController: tabController2,
          tabs: widget.secondTabBar,
        ),
        const SizedBox(height: 20),
        Expanded(
          child: TabBarView(
            controller: tabController2,
            children:List.generate(3, (index)=>   GeneralSectionInfo(),) 
            
           
          ),
        )
      ],
    );
  }
}
