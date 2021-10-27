import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Center(
              child: Container(
                padding: EdgeInsets.all(50),
                alignment: Alignment.topCenter,
                child: Text(
                  'Hello there!!!',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Colors.blue),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20),
              child: Image.network(
                  'https://dummyimage.com/200x200/3400a3/ffffff&text=Dummy+image'),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              width: 400,
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name'
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              width: 400,
              child: TextField(
                controller: mailController,
                decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder()
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              width:400,
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder()
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              width: 400,
              child: DropdownButton<String>(
                hint: Text('Select your gender'),
                items: <String>['Male', 'Female', 'Other', 'Rather not to say'].map((String value){
                  return DropdownMenuItem<String>(
                    value:value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_){},
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: ElevatedButton(
                //textColor: Colors.white,
                //color: Colors.purple,
                child: Text(
                    'Sign up',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  final snackBar = SnackBar(
                    content: const Text('You have signed up successfully'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}