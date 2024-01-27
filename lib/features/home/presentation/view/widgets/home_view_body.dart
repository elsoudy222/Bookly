import 'package:bookly/core/utils/const/assets_path/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
      ],
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:   EdgeInsets.symmetric(horizontal: 10.0.w),
      child: Row(
        children: [
          SizedBox(height: 120.h,),
          Image.asset(AssetsPaths.logoPng,height: 15.h,),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(IconlyBold.search),
          )
        ],
      ),
    );
  }
}
