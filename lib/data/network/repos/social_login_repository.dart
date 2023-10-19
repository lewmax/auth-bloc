import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../core/utils/app_logger.dart';

class SocialAuthRepository {
  Future<String?> googleLogin() async {
    try {
      final _firebaseAuth = FirebaseAuth.instance;
      final _googleSignIn = GoogleSignIn();
      await _googleSignIn.signOut();
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) return null;
      final authentication = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: authentication.accessToken,
        idToken: authentication.idToken,
      );
      await _firebaseAuth.signInWithCredential(credential);
      final token = await _firebaseAuth.currentUser!.getIdTokenResult();

      return token.token;
    } catch (e, st) {
      AppLogger.log(e, st);

      return null;
    }
  }

  Future<String?> facebookLogin() async {
    try {
      final firebaseAuth = FirebaseAuth.instance;
      final _facebookAuth = FacebookAuth.instance;
      await _facebookAuth.logOut();
      final result = await _facebookAuth.login();
      final facebookCredential =
          FacebookAuthProvider.credential(result.accessToken!.token);
      await firebaseAuth.signInWithCredential(facebookCredential);

      final token = await firebaseAuth.currentUser!.getIdToken();

      return token;
    } catch (e, st) {
      AppLogger.log(e, st);

      return null;
    }
  }
}
