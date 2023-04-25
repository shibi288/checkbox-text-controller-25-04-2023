import 'package:flutter/material.dart';


class Mybutton extends StatefulWidget {
  const Mybutton({Key? key}) : super(key: key);

  @override
  State<Mybutton> createState() => _MybuttonState();
}

class _MybuttonState extends State<Mybutton> {
    String?gender;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Text("What is your gender?", style: TextStyle(
              fontSize: 18
          ),),
          Divider(),
          RadioListTile(
            title: Text("Male"),
            value: "male",
            groupValue: gender,
            onChanged: (value){
              setState(() {
                gender = value.toString();
              });
            },
          ),
          RadioListTile(
            title: Text("FeMale"),
            value: "Female",
            groupValue: gender,
            onChanged: (value){
              setState(() {
                gender = value.toString();
              });
            },
          ),
          RadioListTile(
            title: Text("Other"),
            value: "Other",
            groupValue: gender,
            onChanged: (value){
              setState(() {
                gender = value.toString();
              });
            },
          ),




        ],




      ),







    );
  }
}
