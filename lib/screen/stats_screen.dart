import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:submission_flutter/custom_widget/appbar.dart';
import 'package:submission_flutter/custom_widget/chart.dart';
import 'package:submission_flutter/custom_widget/custom_card.dart';
import 'package:submission_flutter/custom_widget/custom_toggle.dart';

class StatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SafeArea(
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
                              size: 2.2,
                              color: Colors.orange,
                            ),
                            CustomCard(
                              title: 'Death',
                              number: '9,620',
                              size: 2.2,
                              color: Colors.red,
                            ),
                          ],
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CustomCard(
                            title: 'Recovered',
                            number: '17,997',
                            size: 3.2,
                            color: Colors.green,
                          ),
                          CustomCard(
                            title: 'Active',
                            number: '301,251',
                            size: 3.2,
                            color: Colors.lightBlueAccent,
                          ),
                          CustomCard(
                            title: 'Serious',
                            number: '8,702',
                            size: 3.2,
                            color: Colors.deepPurpleAccent,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SlidingUpPanel(
          borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(32.0),
              topRight: const Radius.circular(32.0)
          ),
          minHeight: 250,
          panel: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(32.0),
                  topRight: const Radius.circular(32.0)
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: Text(
                    'Daily New Case',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                    ),
                  ),
                ),
                Container(child: Chart()),
              ],
            ),
          ),
        )
      ],
    );
  }
}

