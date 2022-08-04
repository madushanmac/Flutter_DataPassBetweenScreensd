import 'package:flutter/material.dart';
import 'package:pass_dat/secondpage.dart';

void main() {
  runApp(DataApp());
}

class DataApp extends StatelessWidget {
  const DataApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Data App ',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController name = new TextEditingController();
  TextEditingController age = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController phone = new TextEditingController();

  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello Data '),
        ),
        body: Padding(
            padding: EdgeInsets.all(40),
            child: Center(
              child: Column(
                children: [
                  TextField(
                    controller: name,
                    decoration: InputDecoration(
                      //  border: OutlineInputBorder(),
                      label: Text('Enter name'),
                    ),
                  ),
                  TextField(
                    controller: email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('email'),
                    ),
                  ),
                  TextField(
                    controller: phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('phone'),
                    ),
                  ),
                  TextField(
                    controller: age,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('age'),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  //button to naviga
                  FlatButton(
                    onPressed: () {
                      if (isLoading) return;
                      setState(() => isLoading = true);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => secondpage(
                                  name: name.text,
                                  age: age.text,
                                  email: email.text,
                                  phone: phone.text)));
                    },
                    child: isLoading
                        ? CircularProgressIndicator(
                            color: Colors.red,
                          )
                        : Text('go next'),
                    color: Colors.black26,
                  ),
                ],
              ),
            )));
  }
}
