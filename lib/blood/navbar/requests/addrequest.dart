import 'package:flutter/material.dart';
import 'package:flutter_application_1/blood/mainpage.dart';
import 'package:flutter_application_1/blood/navbar/requests/requestpage.dart';

class AddRequest extends StatefulWidget {
  const AddRequest({super.key});

  @override
  State<AddRequest> createState() => _AddRequestState();
}

class _AddRequestState extends State<AddRequest> {
  final bloodGroups = ['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-'];
  String? selectedGroup;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blood Life"),
        foregroundColor: Colors.red,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (() => Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: ((context) => const MainHomePage())))),
          icon: Icon(Icons.keyboard_backspace_outlined),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), label: Text("Requester name")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              keyboardType: TextInputType.number,
              maxLength: 10,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), label: Text("mobile no.")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: DropdownButtonFormField(
                decoration: InputDecoration(label: Text("select blood Group")),
                items: bloodGroups
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                onChanged: ((val) {
                  selectedGroup = val as String?;
                })),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                    minimumSize:
                        MaterialStateProperty.all(Size(double.infinity, 50)),
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                child: Text(
                  "Submit",
                  style: TextStyle(fontSize: 20),
                )),
          )
        ],
      ),
    );
  }
}
