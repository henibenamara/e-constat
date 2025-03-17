import 'package:firebase_auth/firebase_auth.dart';
import '../models/user_model.dart';

class AuthRepository {
  final FirebaseAuth _firebaseAuth;

  AuthRepository(this._firebaseAuth);

  Future<UserModel?> signIn(String email, String password) async {
    try {
      final result = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return result.user != null ? UserModel.fromFirebaseUser(result.user!) : null;
    } catch (e) {
      return null;
    }
  }

  Future<UserModel?> register(String email, String password) async {
    try {
      final result = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      return result.user != null ? UserModel.fromFirebaseUser(result.user!) : null;
    } catch (e) {
      return null;
    }
  }

  Future<void> signOut() async => await _firebaseAuth.signOut();

  UserModel? getCurrentUser() {
    final firebaseUser = _firebaseAuth.currentUser;
    return firebaseUser != null ? UserModel.fromFirebaseUser(firebaseUser) : null;
  }
}
