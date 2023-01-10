import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Home",
                border: OutlineInputBorder(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
