import 'package:flutter/material.dart';

class PasswordText extends StatefulWidget {
  @override
  _PasswordTextState createState() => _PasswordTextState();
}

class _PasswordTextState extends State<PasswordText> {
  bool hide=true;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
      child: TextFormField(

        obscureText: hide,
        decoration: InputDecoration(
          suffixIcon: InkWell(
            onTap: (){
              debugPrint('eye btn is pressed');
              setState(() {
                hide=!hide;
              });
            },
            child: Icon(Icons.remove_red_eye, color: Colors.deepPurpleAccent,),
          ),
            hintText: "Password",
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
    );
  }
}
