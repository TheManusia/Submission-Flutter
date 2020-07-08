import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  String title, number;
  Color color;

  CustomCard({this.title, this.number, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2.5,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.0)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Text(
                number,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}