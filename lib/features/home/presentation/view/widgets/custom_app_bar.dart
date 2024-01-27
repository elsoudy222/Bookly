import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import '../../../../../core/utils/const/assets_path/assets_path.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:   EdgeInsets.symmetric(horizontal: 13.0.w,vertical: 40.h),
      child: Row(
        children: [

          Image.asset(AssetsPaths.logoPng,height: 15.h,),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(IconlyBold.search,color: Colors.white,),
          )
        ],
      ),
    );
  }
}