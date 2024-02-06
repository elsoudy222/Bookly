import 'package:bookly/core/components/custom_error.dart';
import 'package:bookly/core/components/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/view_model/featured_books_cubit/featured_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubit, FeaturedBooksState>(
      builder: (context, state) {
         if (state is FeaturedBooksSuccess){
          return SizedBox(
            height: 200.h,
            child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: EdgeInsets.only(left: 13.0.w),
                    child: const CustomBookImage(),
                  );
                }
            ),
          );
        }
         else if(state is FeaturedBooksFailure ){
          return CustomErrorWidget(errMessage: state.errMessage);
        }else {
           return const CustomLoadingIndicator();
         }
      },
    );
  }
}