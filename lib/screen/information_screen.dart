import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:submission_flutter/custom_widget/appbar.dart';
import 'package:submission_flutter/model/hospital.dart';

class InformationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          CustomAppBar(
            title: 'Information',
          ),
          Image.asset(
            'images/doctor2.png',
            width: MediaQuery.of(context).size.width - 150,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32)),
                      color: Colors.white),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: Text(
                          'Hospital Near You',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 200,
                              child: ListView(
                                children: hospitalList.map((e) {
                                  return Container(
                                    child: Card(
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                            flex: 1,
                                            child: Image.network(e.picture,),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  Text(
                                                    e.name,
                                                    style: TextStyle(fontSize: 16),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(e.location)
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

var hospitalList = [
  Hospital(
    name: 'RS Advent Bandung',
    location: 'Jl. Cihampelas, Cipaganti, Kecamatan Coblong',
    picture:
        'https://d1ojs48v3n42tp.cloudfront.net/provider_location_banner/512703_8-5-2020_12-12-16.jpeg',
  ),
  Hospital(
      name: 'RS Al Islam Bandung',
      location: 'Jl. Soekarno Hatta, Manjahlega, Kec. Rancasari',
      picture:
          'https://d1ojs48v3n42tp.cloudfront.net/provider_location_banner/503407_11-2-2020_9-32-53.jpg'),
  Hospital(
    name: 'RS Bhayangkara Sartika Asih Bandung',
    location: 'Jl. Moh. Toha, Ciseureuh, Kec. Regol',
    picture:
        'https://d1ojs48v3n42tp.cloudfront.net/provider_location_banner/609825_15-2-2020_21-34-37.jpg',
  ),
  Hospital(
      name: 'RS Bungsu Bandung',
      location: 'Jl. Veteran, Kb. Pisang, Kec. Sumur Bandung',
      picture:
          'https://d1ojs48v3n42tp.cloudfront.net/provider_location_banner/705696_24-3-2020_13-27-32.png'),
  Hospital(
      name: 'RS Hasan Sadikin Bandung',
      location: 'Jl. Pasteur, Pasteur, Kec. Sukajadi',
      picture:
          'https://d1ojs48v3n42tp.cloudfront.net/provider_location_banner/5755_11-2-2020_13-49-49.jpg'),
  Hospital(
      name: 'RS Hermina Arcamanik',
      location: 'Jalan Ahmad Nasution, Antapani Wetan, Kec. Antapani',
      picture:
          'https://d1ojs48v3n42tp.cloudfront.net/provider_location_banner/185427_15-4-2020_20-11-59.jpeg')
];
