import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/const/assets_path/assets_path.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        const FeaturedBooksListView(),
        SizedBox(
          height: 35.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.0.r),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Best Seller",
                style: Styles.textStyle20,
              ),
              BestSellerListViewItem(),
            ],
          ),
        ),

      ],
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Container(
            height: 100.h,
            width: 70.w,
            decoration:  BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  AssetsPaths.testPic,

                ),

              ),
            ),
          )
        ],
      ),
    );
  }
}
