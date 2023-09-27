import 'package:dartz/dartz.dart';
import 'package:untitled/core/Errors/failure.dart';

abstract class Usecase<Type, Params> {
  Future<Either<Type, Failure>> call(Params params);
}
