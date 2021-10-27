
import 'package:flutter/material.dart';

//For Dropdown menu
class DropDownList extends StatefulWidget {

  @override
  _DropDownListState createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  var chosenGender;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: chosenGender,
        decoration: InputDecoration(
          isDense: true,
          border: OutlineInputBorder()
        ),
      icon: Icon(Icons.keyboard_arrow_down_rounded),
      hint: Text('Select your gender'),
      validator: (value) => value == null ? 'field required' : null,
      items: <String>[
        'Male',
        'Female',
        'Other',
        'Rather not to say'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? value) {
        setState(() {
          chosenGender = value;
        });
      },

    );
  }
}

