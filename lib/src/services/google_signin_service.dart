import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

class GoogleSignInService {
  static final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  static Future<GoogleSignInAccount?> sigInWithGoogle() async {
    try {
      final googleSigInAccount = await _googleSignIn.signIn();
      final googleKey = await googleSigInAccount!.authentication;

      final googleSignInEndPoint = Uri(
        scheme: 'https',
        host: 'google-sign-in-backend-v.herokuapp.com',
        path: '/auth/google',
      );

      http.Response response = await http.post(
        googleSignInEndPoint,
        body: {'token': googleKey.idToken},
      );
    } catch (e) {
      print('Error en google signIn');
      print(e);
      return null;
    }
  }

  static Future signOut() async {
    await _googleSignIn.signOut();
  }
}
