import 'package:flutter/material.dart';


class LoggedInWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "hello logged User",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          decoration: TextDecoration.none,
          color: Colors.blueGrey
        )
        ,
      ),
    );
  }
}
