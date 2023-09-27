import 'package:dartz/dartz.dart';
import 'package:untitled/core/Errors/failure.dart';

import '../models/user.dart';

abstract class UsersRepository {
  Future<Either<List<User>, Failure>> getAllUsers(int? page);
  Future<Either<User, Failure>> getById(int id);
  Future<Either<User, Failure>> searchUser(String query);
}
