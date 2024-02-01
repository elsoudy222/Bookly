import 'package:bookly/features/home/presentation/view/home/widgets/custom_book_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30.0.w),
      child:  Column(
        children: [
          const CustomBookDetailsAppBar(),
          SizedBox(height: 15.h,),
          const CustomBookItem(),
        ],
      ),
    );
  }
}

