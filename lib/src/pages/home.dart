import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:google_sign_in_app/src/services/google_signin_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AuthApp - Google'),
        actions: [
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.doorOpen),
            onPressed: () async {
              await GoogleSignInService.signOut();
            },
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                splashColor: Colors.transparent,
                minWidth: double.infinity,
                height: 40,
                color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    FaIcon(FontAwesomeIcons.google, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Sigin with google',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ],
                ),
                onPressed: onGoogleSignIn,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onGoogleSignIn() async {
    final googleAccount = await GoogleSignInService.sigInWithGoogle();
  }
}
