import 'package:flutter/material.dart';

class CustomToggle extends StatefulWidget {
  @override
  _CustomToggleState createState() => _CustomToggleState();
}

class _CustomToggleState extends State<CustomToggle> {
  List<bool> isSelected;

  @override
  void initState() {
    isSelected = [true, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          height: 45,
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.circular(32)
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: ToggleButtons(
              fillColor: Colors.white,
              borderWidth: 2,
              borderColor: Colors.transparent,
              color: Colors.white,
              selectedColor: Colors.black,
              borderRadius: BorderRadius.circular(32),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'My Country',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Global',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
              onPressed: (int index) {
                setState(() {
                  for (int i = 0; i < isSelected.length; i++) {
                    isSelected[i] = i == index;
                  }
                });
              },
              isSelected: isSelected,
            ),
          ),
        ),
    );
  }
}