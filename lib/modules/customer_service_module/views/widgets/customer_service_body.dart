import 'package:customer_service/core/widgets/custom_app_bar.dart';
import 'package:flutter/widgets.dart';

class CustomerServiceBody extends StatelessWidget {
  const CustomerServiceBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.only(
            top: 20,
          ),
          child: CustomAppBar(),
        ))
      ],
    );
  }
}
