import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled/core/usecases/usecase.dart';

import '../../core/Errors/failure.dart';
import '../models/user.dart';
import '../repositories/users_repository.dart';

class GetUserById extends Usecase<User, IdUserParams> {
  final UsersRepository repository;

  GetUserById({required this.repository});

  Future<Either<User, Failure>> call(IdUserParams params) async {
    return await repository.getById(params.id);
  }
}

class IdUserParams extends Equatable {
  final int id;

  const IdUserParams({required this.id});

  @override
  List<Object?> get props => [id];
}
