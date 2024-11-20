import 'package:bookly_app/core/utlis/api_service.dart';
import 'package:bookly_app/core/utlis/functions/save_book.dart';
import 'package:hive/hive.dart';

import '../../../../constants.dart';
import '../../domain/entities/book_entity.dart';
import '../models/book_model/book_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiService.get(
        endPoint: 'volumes?q=programming&Filtering=free-ebooks');

    List<BookEntity> books = getBooksList(data);

    saveBooksData(books, KFeaturedBox);

    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(
        endPoint: 'volumes?q=programming&Filtering=free-ebooks&Sorting=newest');

    List<BookEntity> books = getBooksList(data);
    saveBooksData(books, KNewestBox);
    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
}
