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
      print(documentSnapshot.data());
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

  @override
  Future<Either<String, UserDto>> register(
      {required UserDto tempUser, required String password}) async {
    try {
      UserCredential credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: tempUser.email, password: password);
      //
      final uid = credential.user!.uid;
      final UserDto toSaveUser = tempUser.copyWith(id: uid);
      await FirebaseFirestore.instance
          .collection('users')
          .doc(uid)
          .set(toSaveUser.toJson());
      return right(toSaveUser);
    } on FirebaseAuthException catch (e) {
      String error = 'Login failed';
      if (e.code == 'invalid-email') {
        error = 'Email id is not valid';
      } else if (e.code == 'email-already-in-use') {
        error = 'Email already in use';
      } else if (e.code == 'operation-not-allowed') {
        error = 'Can\'t perform this operation';
      } else if (e.code == 'weak-password') {
        error = 'Password is too weak';
      }
      return left(error);
    } catch (error) {
      return left('Registration failed');
    }
  }

  @override
  Future<bool> logoutUser() async {
    bool isLogout = false;
    try {
      await FirebaseAuth.instance.signOut();
      isLogout = true;
    } catch (e) {
      return isLogout;
    }
    return isLogout;
  }
}
