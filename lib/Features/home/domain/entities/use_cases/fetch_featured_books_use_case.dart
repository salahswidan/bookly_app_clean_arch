import 'package:dartz/dartz.dart';
import '../../../../../core/errors/failure.dart';
import '../book_entity.dart';
import '../repos/home_repo.dart';
import 'use_case.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, int> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([int param = 0])async {
    return await homeRepo.fetchFeaturedBooks(
      pageNumber: param,
    );
  }
}

