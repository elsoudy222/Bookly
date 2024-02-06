import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15.0.w),
                child: const CustomAppBar(),
              ),
              const FeaturedBooksListView(),
              SizedBox(
                height: 35.h,
              ),
              Padding(
                padding:  EdgeInsets.only(left: 15.0.w),
                child: const Text(
                  "Newest Books",
                  style: Styles.textStyle20,
                ),
              ),

            ],
          ),
        ),
         SliverFillRemaining(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 15.0.w),
            child: const BestSellerListView(),
          ),
        ),

      ],
    );

  }
}


