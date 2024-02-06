import 'package:bookly/core/components/custom_error.dart';
import 'package:bookly/features/home/presentation/view_model/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,

            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.bookModel.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0.h),
                child:  BestSellerListViewItem(bookModel: state.bookModel[index],),
              );
            },
          );
        }else if (state is NewestBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        }else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
