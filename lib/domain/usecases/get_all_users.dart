import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled/core/Errors/failure.dart';
import 'package:untitled/core/usecases/usecase.dart';
import 'package:untitled/domain/repositories/users_repository.dart';

import '../models/user.dart';

class GetAllUsers extends Usecase<List<User>, PageUserParams> {
  final UsersRepository repository;

  GetAllUsers({required this.repository});

  @override
  Future<Either<List<User>, Failure>> call(PageUserParams params) async {
    return await repository.getAllUsers(params.page);
  }
}

class PageUserParams extends Equatable {
  final int page;
  const PageUserParams({required this.page});

  @override
  List<Object?> get props => [page];
}
