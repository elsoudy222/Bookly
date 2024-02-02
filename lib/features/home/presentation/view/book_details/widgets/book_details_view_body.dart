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
      padding: EdgeInsets.symmetric(horizontal: 25.0.w),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          SizedBox(
            height: 15.h,
          ),
          ///////////////////////////////////////////////////////////////
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
          SizedBox(
            height: 15.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'You can also like',
                style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              const SimilarBooksListView(),
            ],

          ),
          SizedBox(
            height: 26.h,
          ),
        ],
      ),
    );
  }
}

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     // color: Colors.orange,
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index){
          return Padding(
            padding:  EdgeInsets.only(right: 8.0.h),
            child: const CustomBookImage(),
          );
        },
      ),
    );
  }
}
