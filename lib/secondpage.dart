import 'package:flutter/material.dart';

class secondpage extends StatelessWidget {
  String name, email, phone, age;

  secondpage(
      {required this.name,
      required this.age,
      required this.email,
      required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Center(
          child: Column(
            children: [
              Text('"$name",sample'),
              Text('$email'),
              Text('$age'),
              Text('$phone')
            ],
          ),
        ),
      ),
    );
  }
}
