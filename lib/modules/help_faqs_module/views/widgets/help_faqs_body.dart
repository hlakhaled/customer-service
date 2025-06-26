import 'package:awesome_icons/awesome_icons.dart';
import 'package:customer_service/core/widgets/custom_app_bar.dart';
import 'package:customer_service/data/common_model.dart';
import 'package:customer_service/data/contact_us_model.dart';
import 'package:customer_service/modules/help_faqs_module/views/widgets/contact_body.dart';
import 'package:customer_service/modules/help_faqs_module/views/widgets/custom_tab_bar.dart';

import 'package:customer_service/modules/help_faqs_module/views/widgets/items_in_tab_bar.dart';
import 'package:flutter/material.dart';

class HelpFaqsBody extends StatefulWidget {
  const HelpFaqsBody({super.key});

  final List<ContactUsModel> contact = const [
    ContactUsModel(
      title: "Customer Service",
      icon: Icons.support_agent,
      describtion: "tel:+123456789", 
    ),
    ContactUsModel(
      title: "Website",
      icon: FontAwesomeIcons.globe,
      describtion: "https://example.com", 
    ),
    ContactUsModel(
      title: "Facebook",
      icon: FontAwesomeIcons.facebook,
      describtion: "https://facebook.com/yourpage", 
    ),
    ContactUsModel(
      title: "Whatsapp",
      icon: FontAwesomeIcons.whatsapp,
      describtion: "https://wa.me/201234567890", 
    ),
    ContactUsModel(
      title: "Instagram",
      icon: FontAwesomeIcons.instagram,
      describtion:
          "https://instagram.com/yourprofile", 
    ),
  ];

  final List<Widget> firstTabBar = const [
    Tab(text: "FAQ"),
    Tab(text: "Contact Us"),
  ];

  final List<Widget> secondTabBar = const [
    Tab(text: "General"),
    Tab(text: "Account"),
    Tab(text: "Services"),
  ];

  @override
  State<HelpFaqsBody> createState() => _HelpFaqsBodyState();
}

class _HelpFaqsBodyState extends State<HelpFaqsBody>
    with TickerProviderStateMixin {
  late TabController tabController;
  late TabController tabController2;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    tabController2 = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    tabController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: CustomAppBar(
            commonModel: CommonModel(
              title: "Help & FAQS",
              description: "How Can We Help You?",
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 10),
        ),
        SliverToBoxAdapter(
          child: CustomTabBar(
            tabController: tabController,
            tabs: widget.firstTabBar,
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 20),
        ),
        SliverFillRemaining(
          child: TabBarView(
            controller: tabController,
            children: [
              ItemsInTabBar(tabController2: tabController2, widget: widget),
              ContactBody(widget: widget),
            ],
          ),
        ),
      ],
    );
  }
}
