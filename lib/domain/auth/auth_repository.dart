import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';

import '../../infrastructure/auth/dto/user/user_dto.dart';

abstract class AuthRepository {
  Future<Either<String, UserDto>> login(
      {required String email, required String password});
  Future<Either<String, UserDto>> register(
      {required UserDto tempUser, required String password});
  Future<bool> logoutUser();
  Future<UserDto?> isUserLogged();
  Future<Either<String, UserDto>> createProfile({
    required UserDto createUser,
  });
Future<Either<String, String>> uploadProfilePicture({required PlatformFile file});
}
