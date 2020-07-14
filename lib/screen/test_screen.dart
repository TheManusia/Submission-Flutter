import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 64,
                left: 32,
                right: 16
              ),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.2,
                child: Text(
                    'Check in daily how you feel',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 45
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 16,
                  left: 32,
                  right: 16
              ),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.2,
                child: Text(
                  'Share how you feel to help scientists fight the spread of COVID-19',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 32,
              ),
              child: Image.asset('images/doctor2.png', height: 300),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          bottom: 16,
          right: 16
        ),
        child: RaisedButton(
          child:  Container(
            height: 50.0,
            child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(width: 16.0),
                  Text(
                    'Let\'s do it',
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 16.0),
                ]),
          ),
          color: Color(0xfffb9c19),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          onPressed: () {

          },

        ),
      )
    );
  }
}