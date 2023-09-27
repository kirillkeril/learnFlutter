import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled/core/usecases/usecase.dart';

import '../../core/Errors/failure.dart';
import '../models/user.dart';
import '../repositories/users_repository.dart';

class GetUserBySearch extends Usecase<User, SearchUserParams> {
  final UsersRepository repository;

  GetUserBySearch({required this.repository});

  Future<Either<User, Failure>> call(SearchUserParams params) async {
    return await repository.searchUser(params.query);
  }
}

class SearchUserParams extends Equatable {
  final String query;
  const SearchUserParams({required this.query});

  @override
  List<Object?> get props => [query];
}
