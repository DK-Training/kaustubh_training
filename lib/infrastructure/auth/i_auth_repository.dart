import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/auth/auth_repository.dart';

class IAuthRepository extends AuthRepository {
  @override
  Future<Either<String, bool>> login(
      {required String email, required String password}) async {
    try {
      UserCredential credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      print(credential.user!.uid);
      return right(true);
    } on FirebaseAuthException catch (e) {
      String error = 'Login failed';
      if (e.code == 'invalid-email') {
        error = 'Email id is not valid';
      } else if (e.code == 'user-disabled') {
        error = 'User is disabled';
      } else if (e.code == 'user-not-found') {
        error = 'User not found';
      } else if (e.code == 'wrong-password') {
        error = 'Wrong password';
      }
      return left(error);
    } catch (error) {
      return left('Login failed');
    }
  }
}


