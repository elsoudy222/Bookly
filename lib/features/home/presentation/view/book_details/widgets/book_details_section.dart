import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';
import '../../home/widgets/book_rating.dart';
import '../../home/widgets/custom_book_item.dart';
import 'book_action_button.dart';


class BookDetailsSection extends StatelessWidget {
 final BookModel bookModel;
  const BookDetailsSection({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 60.0.w),
          child:  const CustomBookImage(imageUrl: '',),
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
          height: 5.h,
        ),
        const BookRating(
          rating: 4.9,
          count: 400,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        ////////////////////////////////////////////////////////////////
        SizedBox(
          height: 20.h,
        ),
        const BooksAction(),
      ],
    );
  }
}