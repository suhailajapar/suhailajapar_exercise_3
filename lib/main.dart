import 'package:flutter/material.dart';
import './form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0,40,0,30),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text('Welcome! Ready for the Whistledown?',
                textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.purple),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20),
              child: Image.network(
                  'https://dummyimage.com/150x150/3400a3/ffffff&text=Dummy+Logo'),
            ),
            Container(
              width: 350,
              child: FormInput()
            )
          ],
        ),
      ),
    );
  }
}

