import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({Key? key}) : super(key: key);

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  late String initialSelect;

  @override
  void initState() {
    super.initState();
    initialSelect = "Weekly"; // Initialize the selected value
  }

  @override
  Widget build(BuildContext context) {
    final List<String> lists = [
      "Weekly",
      "Daily",
      "Monthly",
      "Yearly",
    ];

    return Container(
      width: 80,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey),
      ),
      child: Center(
        child: DropdownButton<String>(
          value: initialSelect,
          onChanged: (String? value) {
            if (value != null) {
              setState(() {
                initialSelect = value; // Update the selected value
                print(initialSelect);
              });
            }
          },
          underline: Container(), // This removes the underline
          items: lists.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}