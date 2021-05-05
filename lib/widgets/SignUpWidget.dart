import 'package:flutter/material.dart';
import 'package:login_module/widgets/GoogleSignInButton.dart';
import 'package:login_module/widgets/password-text-filed.dart';

class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [Container(
        child: Column(children: [
          Container(
            height: 280.0,
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Image.asset('assets/login.png')
          ),
          //Username Text Filed
          Container(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Username",
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: Colors.deepPurpleAccent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: Colors.deepPurpleAccent),
                )
              ),
            ),
          ),
          //Password text filed
          PasswordText(),
          //submit button
          InkWell(
            onTap: (){
              debugPrint("Submit button is pressed");
            },
            child: Container(
              width: 300,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.deepPurpleAccent
              ),
              child: Center(
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 18
                  ),
                ),
              ),
            ),
          ),
          // Optional Display
          Container(
            alignment: Alignment.center,

            child: Text(
              "Or sign in using ",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontWeight: FontWeight.w900, fontStyle: FontStyle.italic),
            ),
          ),
          GoogleSignInButton(),
          SizedBox(
            height: 12,
          ),

        ]),
      ),]
    );
  }
}
