import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/Features/home/domain/entities/use_cases/fetch_featured_books_use_case.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitial());

  final FetchFeaturedBooksUseCase featuredBooksUseCase;
  Future<void> fetchFeaturedBooks({int pageNumber = 0}) async {
    if (pageNumber == 0) {
      emit(FeaturedBooksLoading());
    } else {
      emit(FeaturedBooksPaginationLoaging());
    }
    var result = await featuredBooksUseCase.call(pageNumber);
    result.fold((failure) {
      if (pageNumber == 0) {
        emit(FeaturedBooksFailure(failure.message));
      } else {
        emit(FeaturedBooksPaginationFailure(failure.message));
      }
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
