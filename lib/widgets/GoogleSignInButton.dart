import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_module/provider/google-sign-in.dart';
import 'package:provider/provider.dart';

class GoogleSignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap:(){
              debugPrint("btn is pressed");
              final provider=Provider.of<GoogleSignInProvider>(context, listen: false);
              provider.login();
            } ,
            child: Container(


              
              height: 70,
              width: 70,
              child: Image.asset('assets/logo.png'),
            ),
          ),
          InkWell(
            onTap:(){
              debugPrint("btn is pressed");

            } ,
            child: Container(



              height: 70,
              width: 70,
              child: Image.asset('assets/flogo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
