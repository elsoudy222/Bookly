import 'package:dartz/dartz.dart';
import 'package:bookly/features/home/data/models/book_model.dart';

import '../../../../core/errors/failure.dart';

///
abstract class HomeRepo
{
 Future<Either<Failure, List<BookModel>>>  fetchBestSellerBooks();
 Future<Either<Failure, List<BookModel>>>  fetchFeaturedBooks();

}
