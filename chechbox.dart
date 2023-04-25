import 'package:flutter/material.dart';

class ChcBox extends StatefulWidget {
  const ChcBox({Key? key}) : super(key: key);

  @override
  State<ChcBox> createState() => _ChcBoxState();
}

class _ChcBoxState extends State<ChcBox> {
  var checkvalue = false;
  var check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WELCOME"),
    ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(20),
                child: Checkbox(
                  checkColor: Colors.red,
                  activeColor: Colors.green,
                  //autofocus:true,
//fillColor: ,
              //  focusColor: Colors.purple,
                  value:checkvalue,
                  onChanged: (value) {
                  setState(() {
                    checkvalue = !checkvalue;
                  });
                  },
                ),

              ),
              Text("Remember Me")
            ],
          ),
          CheckboxListTile(
            title: Text(" Do Ypu Want Save this Contant"),
            value: check, onChanged: (value) {
            setState(() {
              check = ! check;
            });
          },)

        ],
      ),
    );

  }
}
