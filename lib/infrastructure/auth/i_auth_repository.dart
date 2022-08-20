import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/auth/auth_repository.dart';
import 'dto/user/user_dto.dart';

class IAuthRepository extends AuthRepository {
  @override
  Future<Either<String, UserDto>> login(
      {required String email, required String password}) async {
    try {
      UserCredential credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      final String uid = credential.user!.uid;
      final DocumentSnapshot<Map<String, dynamic>> documentSnapshot =
          await FirebaseFirestore.instance.collection('users').doc(uid).get();
      if (!documentSnapshot.exists) {
        return left('Login failed');
      }
      final UserDto user = UserDto.fromJson(documentSnapshot.data()!);
      return right(user);
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
