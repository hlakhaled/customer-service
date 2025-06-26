import 'package:customer_service/core/utils/styles.dart';
import 'package:customer_service/core/widgets/custom_app_bar.dart';
import 'package:customer_service/core/widgets/custom_divider.dart';
import 'package:customer_service/data/common_model.dart';
import 'package:customer_service/modules/customer_service_module/views/widgets/helping_section.dart';
import 'package:flutter/material.dart';

class CustomerServiceBody extends StatelessWidget {
  const CustomerServiceBody({super.key});
  final List<CommonModel> help = const [
    CommonModel(title: "How can we help you?", description: "Support"),
    CommonModel(title: "Help center", description: "General Information"),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.only(
            top: 20,
          ),
          child: CustomAppBar(
            commonModel: CommonModel(
                title: "Customer Service",
                description: "Hello! I'm Here To Assist You"),
          ),
        )),
        SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.Praesent pellentesque congue lorem, vel tincidunt tortorplacerat a. Proin ac diam quam. Aenean in sagittis magna, utfeugiat diam.',
            style: Styles.textStyle14
                .copyWith(color: Colors.black.withOpacity(0.6)),
          ),
        )),
        const SliverToBoxAdapter(
          child: CustomDivider(),
        ),
        SliverToBoxAdapter(
            child: HelpingSection(index: 0,
          helpingSectionModel: help[0],
        )),
        const SliverToBoxAdapter(
          child: CustomDivider(),
        ),
        SliverToBoxAdapter(
            child: HelpingSection(index: 1,
          helpingSectionModel: help[1],
        )),
      ],
    );
  }
}
