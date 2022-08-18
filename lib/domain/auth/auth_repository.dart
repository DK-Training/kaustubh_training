import 'package:dartz/dartz.dart';

abstract class AuthRepository{
  Future<Either<String,bool>> login({required String email,required String password});
}