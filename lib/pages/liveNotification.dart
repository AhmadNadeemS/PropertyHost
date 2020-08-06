import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class LiveNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[600],
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Property Host'),
          centerTitle: true,
          backgroundColor: Colors.grey[800],
          elevation: 0.0,
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Column(
            children: <Widget>[
              Container(
                height: 35.0,
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                    letterSpacing: 2.0,
                  ),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.pink[700], width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey[100], width: 2.0),
                    ),
                    hintText: 'search',
                    hintStyle: TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.only(
                        left: 15.0, bottom: 0.0, top: 10.0),
                    suffixIcon: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(width: 1.0, color: Colors.black),
                        ),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.search),
                        color: Colors.grey[800],
                        onPressed: () {
                          Navigator.pushNamed(context, '/main');
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                      onPressed: () {},
                      child: Text('For Sale'),
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 2.0),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                      onPressed: () {},
                      child: Text('Price'),
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 2.0),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                      onPressed: () {},
                      child: Text('Beds & Baths'),
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 2.0),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                      onPressed: () {},
                      child: Text('Home Type'),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 1.32,
                    child: Stack(
                      children: <Widget>[
                        new FlutterMap(
                            options: new MapOptions(
                                minZoom: 10.0,
                                center: new LatLng(33.684422, 73.047882)),
                            layers: [
                              new TileLayerOptions(
                                  urlTemplate:
                                      'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                                  subdomains: ['a', 'b', 'c']),
                              new MarkerLayerOptions(markers: [
                                new Marker(
                                    width: 45.0,
                                    height: 45.0,
                                    point: new LatLng(33.684422, 73.047882),
                                    builder: (context) => new Container(
                                          child: IconButton(
                                              icon: Icon(Icons.accessibility),
                                              onPressed: () {
                                                Navigator.pushNamed(
                                                    context, '/ImageCarousel');
                                              }),
                                        ))
                              ]),
                              CircleLayerOptions(circles: [
                                CircleMarker(
                                    //radius marker
                                    point: LatLng(33.684422, 73.047882),
                                    color: Colors.blue.withOpacity(0.3),
                                    borderStrokeWidth: 3.0,
                                    borderColor: Colors.blue,
                                    radius: 150 //radius
                                    )
                              ]),
                            ])
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
