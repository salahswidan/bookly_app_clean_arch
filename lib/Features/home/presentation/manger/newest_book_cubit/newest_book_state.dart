part of 'newest_book_cubit.dart';

sealed class NewestBookState extends Equatable {
  const NewestBookState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBookState {}
final class NewestBooksLoading extends NewestBookState {}
final class NewestBooksFailure extends NewestBookState {
  final String errorMessage;

  NewestBooksFailure(this.errorMessage);  

}
final class NewestBooksSuccess extends NewestBookState {
  final List<BookEntity> books;

  NewestBooksSuccess(this.books);
}
