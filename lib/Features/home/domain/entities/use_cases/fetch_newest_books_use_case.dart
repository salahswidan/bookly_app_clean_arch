import 'package:dartz/dartz.dart';
import '../../../../../core/errors/failure.dart';
import '../book_entity.dart';
import '../repos/home_repo.dart';
import 'use_case.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchNewestBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param])async {
    return await homeRepo.fetchNewestBooks();
  }
}

