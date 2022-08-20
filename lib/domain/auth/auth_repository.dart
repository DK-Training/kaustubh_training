import 'package:dartz/dartz.dart';

import '../../infrastructure/auth/dto/user/user_dto.dart';

abstract class AuthRepository{
  Future<Either<String, UserDto>> login({required String email,required String password});
}