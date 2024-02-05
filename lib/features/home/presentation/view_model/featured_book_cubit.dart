import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/book_model.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBooksState> {
  FeaturedBookCubit() : super(FeaturedBooksInitial());
}
