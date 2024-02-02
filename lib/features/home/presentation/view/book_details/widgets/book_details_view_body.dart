import 'package:bookly/features/home/presentation/view/book_details/widgets/similar_books_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'book_details_section.dart';
import 'custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0.w),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                ///////////////////////////////////////////////////////////////
                const BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50.h,
                  ),
                ),
                const SimilarBooksSection(),
                SizedBox(
                  height: 26.h,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}





