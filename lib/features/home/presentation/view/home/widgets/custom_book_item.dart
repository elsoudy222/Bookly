import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/const/assets_path/assets_path.dart';



// class CustomBookItem extends StatelessWidget {
//   const CustomBookItem({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding:  EdgeInsets.symmetric(horizontal: 8.0.r),
//       child: Container(
//         height: 200.h,
//         width: 150.w,
//         decoration:  BoxDecoration(
//           color: Colors.orange,
//           borderRadius: BorderRadius.circular(15),
//           image: const DecorationImage(
//             fit: BoxFit.cover,
//             image: AssetImage(
//               AssetsPaths.testPic,
//
//             ),
//
//           ),
//         ),
//       ),
//     );
//   }
// }



class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Image.asset(AssetsPaths.testPic,fit: BoxFit.fill,),
      ),
    );
  }
}