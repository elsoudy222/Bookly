import 'package:bookly/core/utils/const/assets_path/assets_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsPaths.logoPng,
          height: 60.h,
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          "Discover Multi Free Books",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ),

        SizedBox(
          height: 10.h,
        ),
        Lottie.asset('assets/svg/loading.json',height: 60.h ),
        Lottie.network('https://lottie.host/a72b5cee-dea8-401c-bf48-d97b98f6bc02/f5gjNu3OUy.json',height: 60.h ),

      ],
    );
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(
        seconds: 3,
      ),
      () {
        GoRouter.of(context).pushReplacement("/homeScreen");
      },
    );
  }
}
