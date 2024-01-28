import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/const/assets_path/assets_path.dart';
import '../../../../../core/utils/const/const.dart';
import '../../../../../core/utils/styles.dart';



class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Container(
            height: 100.h,
            width: 70.w,
            decoration:  BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  AssetsPaths.testPic,

                ),

              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  "Harry Potter and the Goblet of Fire",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20.copyWith(
                   // fontFamily: kGtSectraFine,
                  ),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                "J.K. Rowling",
                style: Styles.textStyle14,
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    'Free',
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //      const Spacer(),
                  // BookRating(
                  //   rating:
                  //   bookModel.volumeInfo.averageRating?.round() ?? 0,
                  //   count: bookModel.volumeInfo.ratingsCount ?? 0,
                  // ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}