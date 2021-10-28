
import 'package:flutter/material.dart';
import './dropdown.dart';

// For Form field
class FormInput extends StatefulWidget {
  const FormInput({Key? key}) : super(key: key);

  @override
  FormInputState createState() {
    return FormInputState();
  }
}

// This class holds data related to the form.
class FormInputState extends State<FormInput> {
  
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextFormField(
              decoration: InputDecoration(
                isDense: true,
                  border: OutlineInputBorder(),
                  labelText: 'Name'
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter your name';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextFormField(
              decoration: InputDecoration(
                isDense: true,
                  border: OutlineInputBorder(),
                  labelText: 'Email'
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Email required';
                } else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(value)) {
                      return 'Valid email required';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                isDense: true,
                  border: OutlineInputBorder(),
                  labelText: 'Password'
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password required';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: DropDownList(),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(200, 40),
                  primary: Colors.purple
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Yay! sign up successful.',
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                          )
                        ),
                    );
                  } 
                },
                child: const Text(
                    'Sign up now',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}