import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_app_bar.dart';
import 'custom_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        const FeaturedListViewItem(),
        SizedBox(height: 35.h,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.0.r),
          child: const Text(
            "Best Seller",
            style: Styles.textStyle20,
          ),
        )
      ],
    );
  }
}



