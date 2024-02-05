import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBooksState> {
  FeaturedBookCubit(this.homeRepo) : super(FeaturedBooksInitial());
  HomeRepo homeRepo;


  Future<void> getFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errorMessage));
    }, (books){
      emit(FeaturedBooksSuccess(books));
    });
  }
}
