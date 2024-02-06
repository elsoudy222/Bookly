import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/view_model/featured_books_cubit/featured_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utils/const/colors/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColors.scaffoldBackgroundColor,
        statusBarBrightness: Brightness.dark));
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => FeaturedBookCubit(getIt.get<HomeRepoImpl>(),)..getFeaturedBooks()),

        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Bookly App',
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
            textTheme: GoogleFonts.montserratTextTheme(
              ThemeData.dark().textTheme,
            ),
          ),
          routerConfig: AppRouter.router,
          //home: const SplashScreen(),
        ),
      ),

    );



  }
}

