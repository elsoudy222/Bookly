import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/const/assets_path/assets_path.dart';

class CustomListViewItems extends StatelessWidget {
  const CustomListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: 150.w,
      decoration: const BoxDecoration(
        color: Colors.orange,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            AssetsPaths.testPic,

          ),

        ),
      ),
    );
  }
}