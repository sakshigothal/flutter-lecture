import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var arr = [
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: double.infinity,
          color: Colors.brown[400],
          child: Wrap(
            spacing: 2,
            runSpacing: 2,
            children: [
              for (var item in arr)
                Container(
                    color: Colors.green,
                    width: (MediaQuery.of(context).size.width - 6) / 4,
                    height: 80,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        item,
                        textAlign: TextAlign.center,
                      ),
                    )),
            ],
          ),
        ),
      ),
    );
  }
}
