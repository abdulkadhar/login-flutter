import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';


class GoogleSignInProvider extends ChangeNotifier{
  final googleSignIn= GoogleSignIn();
  bool _isSignIn;

  GoogleSignInProvider(){
    _isSignIn= false;
  }

  set isSignIn(bool value) {
    _isSignIn = value;
  }

  bool get isSignIn => _isSignIn;



  //Making the logic for the sigin Compilation
  Future login() async{
    isSignIn=true;
    debugPrint("btn pressed from the change notifier");
    final user= await googleSignIn.signIn();

    if(user == null){
      isSignIn=false;
      return;
    }
    else{
      final googleAuth= await user.authentication;

      final credential= GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);

      _isSignIn= false;
    }
  }

  void logout() async{
    await googleSignIn.disconnect();

    FirebaseAuth.instance.signOut();
  }

}
