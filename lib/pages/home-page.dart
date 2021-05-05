import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_module/provider/google-sign-in.dart';
import 'package:login_module/widgets/LoggedInWidget.dart';
import 'package:login_module/widgets/SignUpWidget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            final provider = Provider.of<GoogleSignInProvider>(context);

            if (provider.isSignIn) {
              return buildLoading();
            } else if (snapshot.hasData) {
              return LoggedInWidget();
            } else {
              return SignUpWidget();
            }
          },
        ),
      ),
    );
  }

  Widget buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
