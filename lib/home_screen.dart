import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission_flutter/appbar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  var titleBodyStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: 18.0,
  );


  var contentBodyStyle = TextStyle(
    color: Colors.white,
    fontSize: 16.0,
    height: 1.2,
  );


  String country = 'Indonesia';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color:  Colors.deepPurple,
                  borderRadius: BorderRadius.only(
                    bottomLeft: const Radius.circular(32.0),
                    bottomRight: const Radius.circular(32.0)
                  ),
                ),
                child: SafeArea(
                  child: Column(
                    children: <Widget>[
                      CustomAppBar(
                        title: 'Covid-19',
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Your country now',
                              style: titleBodyStyle,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:  BorderRadius.circular(32.0)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    items: <DropdownMenuItem<String>>[
                                      DropdownMenuItem(
                                        value: 'Indonesia',
                                        child: Row(
                                          children: <Widget>[
                                            Image.asset('images/ind.png', height: 32,),
                                            Text('Indonesia')
                                          ],
                                        ),
                                      ),
                                      DropdownMenuItem(
                                        value: 'Philippines',
                                        child: Row(
                                          children: <Widget>[
                                            Image.asset('images/phi.png', height: 32,),
                                            Text('Philippines')
                                          ],
                                        ),
                                      ),
                                      DropdownMenuItem(
                                        value: 'Russia',
                                        child: Row(
                                          children: <Widget>[
                                            Image.asset('images/ru.png', height: 32,),
                                            Text('Russia')
                                          ],
                                        ),
                                      ),
                                      DropdownMenuItem(
                                        value: 'China',
                                        child: Row(
                                          children: <Widget>[
                                            Image.asset('images/chi.png', height: 32,),
                                            Text('China')
                                          ],
                                        ),
                                      ),
                                    ],
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                    ),
                                    value: country,
                                    icon: Icon(Icons.arrow_drop_down),
                                    onChanged: (String value) {
                                      setState(() {
                                        country = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8.0,
                          bottom: 8.0,
                          top: 24.0
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                'Are you feeling sick?',
                                style: titleBodyStyle,
                              ),
                            ),
                            Text(
                              'If you feel sick with any of covid-19 symptoms please call or SMS hospital immediately for help.',
                              style: contentBodyStyle,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          right: 16.0,
                          top: 16.0,
                          bottom: 32.0
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)
                              ),
                              color: Colors.red,
                              splashColor: Colors.redAccent,
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.call,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        'Call Now',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)
                              ),
                              color: Colors.blue,
                              splashColor: Colors.blueAccent,
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.chat_bubble,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        'SMS Now',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 16.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Prevention',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0
                    ),
                  ),
                  Container(
                    height: 175,
                    color: Colors.transparent,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        PreventionItem(
                          image: 'images/distancing.png',
                          text: 'Avoid close contact',
                        ),
                        PreventionItem(
                          image: 'images/hands.png',
                          text: 'Clean your hands often',
                        ),
                        PreventionItem(
                          image: 'images/mask.png',
                          text: 'Wear a facemask',
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 125,
            margin: EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 24.0
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 100,
                  margin: EdgeInsets.only(left: 50.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.deepPurple,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Do your own test!',
                          style: titleBodyStyle,
                        ),
                        Text(
                          'Follow the instruction to do your own test.',
                          style: contentBodyStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  alignment: FractionalOffset.centerLeft,
                  child: Image.asset('images/doctor.png', width: 70,),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class PreventionItem extends StatelessWidget {
  String image, text;

  PreventionItem({this.image, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(image, width: 75,),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0
            ),
          ),
        ],
      ),
    );
  }
}