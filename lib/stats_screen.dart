import 'package:flutter/material.dart';
import 'package:submission_flutter/appbar.dart';
import 'package:submission_flutter/custom_card.dart';
import 'package:submission_flutter/custom_toggle.dart';

class StatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            CustomAppBar(
              title: 'Statistics',
            ),
            CustomToggle(),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Column(
                children: <Widget>[
                  Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CustomCard(
                            title: 'Affected',
                            number: '336,851',
                            color: Colors.orange,
                          ),
                          CustomCard(
                            title: 'Death',
                            number: '9,620',
                            color: Colors.red,
                          )
                        ],
                      )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}