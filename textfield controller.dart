import 'package:flutter/material.dart';

class TxtController extends StatefulWidget {
  const TxtController({Key? key}) : super(key: key);

  @override
  State<TxtController> createState() => _TxtControllerState();
}

class _TxtControllerState extends State<TxtController> {
  var nameController = TextEditingController();
  var addressController = TextEditingController();

  var name, address;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    hintText: "Enter Name",
                    label: Text("Name"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              )),
          Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: addressController,
                decoration: InputDecoration(
                    hintText: "Enter Addess",
                    label: const Text("Address"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              )),
          Padding(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  child: const Text("Save"),
                  onPressed: () {
                    setState(() {
                      if (nameController.text.isEmpty) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(// is this context <<<
                                const SnackBar(content: Text('Name is empty')));
                      }
                      if (addressController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            // is this context <<<
                            const SnackBar(content: Text('Address is empty')));
                      } else {
                        name = nameController.text;
                        address = addressController.text;
                      }
                    });
                  },
                ),
              )),
          InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Done"))
              );
            },
              child: Text("Name : ${name} Address : ${address} ")),

          Padding(
            padding: const EdgeInsets.all(20),
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Navigated"))
                );
              },
                child: Text("Go to next Page")),
          )
        ],
      ),
    );
  }
}
