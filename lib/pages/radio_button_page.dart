import 'package:flutter/material.dart';

class RadioButtonPage extends StatefulWidget {
  @override
  _RadioButtonPageState createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioButtonPage> {
  String? pilihan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Radio Button Page")),
      body: Column(
        children: [
          RadioListTile(
            title: Text("Pilihan A"),
            value: "A",
            groupValue: pilihan,
            onChanged: (value) {
              setState(() {
                pilihan = value;
              });
            },
          ),
          RadioListTile(
            title: Text("Pilihan B"),
            value: "B",
            groupValue: pilihan,
            onChanged: (value) {
              setState(() {
                pilihan = value;
              });
            },
          ),
        ],
      ),
    );
  }
}