import 'package:bookly/core/utils/const/assets_path/assets_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Image.asset(
      AssetsPaths.logoPng,
      height: 60.h,
    ));
  }
}
