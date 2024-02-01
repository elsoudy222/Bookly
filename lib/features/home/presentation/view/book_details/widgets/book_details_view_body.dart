import 'package:bookly/features/home/presentation/view/book_details/widgets/book_action_button.dart';
import 'package:bookly/features/home/presentation/view/home/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/view/home/widgets/custom_book_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';
import 'custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0.w),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.0.w),
            child: const CustomBookImage(),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "The Jungle Book",
            style: Styles.textStyle25.copyWith(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 4.h,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              "Rudyard Kipling",
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          const BookRating(
            rating: 4.9,
            count: 400,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          SizedBox(
            height: 30.h,
          ),
          const BooksAction(),
        ],
      ),
    );
  }
}
