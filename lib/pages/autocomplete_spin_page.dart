import 'package:flutter/material.dart';

class AutocompleteSpinPage extends StatefulWidget {
  @override
  _AutocompleteSpinPageState createState() => _AutocompleteSpinPageState();
}

class _AutocompleteSpinPageState extends State<AutocompleteSpinPage> {
  final List<String> items = ['Apple', 'Banana', 'Cherry', 'Mango'];

  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Autocomplete & Spinner")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Autocomplete<String>(
              optionsBuilder: (TextEditingValue textEditingValue) {
                return items.where((item) => item
                    .toLowerCase()
                    .contains(textEditingValue.text.toLowerCase()));
              },
              onSelected: (value) {
                setState(() {
                  selectedItem = value;
                });
              },
            ),
            SizedBox(height: 20),
            DropdownButton<String>(
              hint: Text("Pilih item"),
              value: selectedItem,
              items: items.map((item) {
                return DropdownMenuItem(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedItem = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}