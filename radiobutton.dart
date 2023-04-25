import 'package:flutter/material.dart';
class RdBtn extends StatefulWidget {
  const RdBtn({Key? key}) : super(key: key);

  @override
  State<RdBtn> createState() => _RdBtnState();
}

enum Gender{Male,Female,Other}


class _RdBtnState extends State<RdBtn> {
  var rb = true;
  var _selectedGender=Gender.Male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [

      Padding(padding: EdgeInsets.all(20),
      child: ListTile(
        title: Text("Male"),
        leading: Radio(
          value: Gender.Male,
          groupValue: _selectedGender,
          onChanged: (Gender? value) {
            setState(() {
              _selectedGender = value!;
            });
          },
        ),
      ),



       ),

            Padding(padding: EdgeInsets.all(20),
              child: ListTile(
                title: Text("Female"),
                leading: Radio(
                  value: Gender.Female,
                  groupValue: _selectedGender,
                  onChanged: (Gender? value) {
                    setState(() {
                      _selectedGender = value!;
                    });
                  },
                ),
              ),



            ),
            Padding(padding: EdgeInsets.all(20),
              child: RadioListTile(
                title: Text("Other"),
                value: Gender.Other,
                groupValue: _selectedGender,
                onChanged: (Gender? value) {
                  setState(() {
                    _selectedGender=value!;
                  });
                },
              ),

            )


  ]

    ));
  }
}
