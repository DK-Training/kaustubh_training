import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/auth/auth_repository.dart';

class IAuthRepository extends AuthRepository {
  @override
  Future<bool> login({required String email, required String password}) async {
    try {
      UserCredential credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      print(credential.user!.uid);
      return true;
    } catch (error) {
      return false;
    }
  }
}
