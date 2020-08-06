import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

Column _bottomForSaleMenu() {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.black,
        ),
        title: Text('For Sale'),
      ),
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.green,
        ),
        title: Text('For Rent'),
      ),
    ],
  );
}

Column _bottomPriceMenu() {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(
              "Set Price Range",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      Form(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 120,
              child: TextFormField(
                decoration: InputDecoration(labelText: 'From'),
              ),
            ),
            Container(
              width: 120,
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Too'),
              ),
            ),
          ],
        ),
      ),
      RaisedButton(
        elevation: 5.0,
        padding: EdgeInsets.fromLTRB(40, 10, 40, 9),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: BorderSide(color: Colors.grey[600], width: 2.0)),
        onPressed: () {},
        child: Text(
          'Set',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.0,
          ),
        ),
        color: Colors.grey[800],
      )
    ],
  );
}

Column _bottomRoomsMenu() {
  return Column(
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(
              "Set No of Rooms",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      Form(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 130,
              child: TextFormField(
                decoration: InputDecoration(labelText: 'No of Rooms'),
              ),
            ),
            Container(
              width: 120,
              child: TextFormField(
                decoration: InputDecoration(labelText: 'No of Baths'),
              ),
            ),
          ],
        ),
      ),
      RaisedButton(
        elevation: 5.0,
        padding: EdgeInsets.fromLTRB(40, 10, 40, 9),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: BorderSide(color: Colors.grey[600], width: 2.0)),
        onPressed: () {},
        child: Text(
          'Set',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.0,
          ),
        ),
        color: Colors.grey[800],
      )
    ],
  );
}

class SearcResult extends StatelessWidget {
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
        endDrawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.grey[500],
          ),
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  height: 90.0,
                  child: DrawerHeader(
                    child: Center(
                        child: Text(
                      'Menu',
                      style: TextStyle(color: Colors.grey[200], fontSize: 25.0),
                    )),
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey[800],
                  child: ListTile(
                    title: Text(
                      'Post an Add',
                      style: TextStyle(color: Colors.grey[200]),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                SizedBox(height: 1.0),
                Container(
                  color: Colors.grey[800],
                  child: ListTile(
                    title: Text(
                      'Sell',
                      style: TextStyle(color: Colors.grey[200]),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                SizedBox(height: 1.0),
                Container(
                  color: Colors.grey[800],
                  child: ListTile(
                    title: Text(
                      'Buy',
                      style: TextStyle(color: Colors.grey[200]),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                SizedBox(height: 1.0),
                Container(
                  color: Colors.grey[800],
                  child: ListTile(
                    title: Text(
                      'Agent',
                      style: TextStyle(color: Colors.grey[200]),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                SizedBox(height: 1.0),
                Container(
                  color: Colors.grey[800],
                  child: ListTile(
                    title: Text(
                      'Get Direction',
                      style: TextStyle(color: Colors.grey[200]),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                SizedBox(height: 1.0),
                Container(
                  color: Colors.grey[800],
                  child: ListTile(
                    title: Text(
                      'Live Notification',
                      style: TextStyle(color: Colors.grey[200]),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                SizedBox(height: 1.0),
                Container(
                  color: Colors.grey[800],
                  child: ListTile(
                    title: Text(
                      'Advertise',
                      style: TextStyle(color: Colors.grey[200]),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                SizedBox(height: 1.0),
                Container(
                  color: Colors.grey[800],
                  child: ListTile(
                    title: Text(
                      'Sign up as Agent',
                      style: TextStyle(color: Colors.grey[200]),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                SizedBox(height: 1.0),
                Container(
                  color: Colors.grey[800],
                  child: ListTile(
                    title: Text(
                      'Sign Out',
                      style: TextStyle(color: Colors.grey[200]),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: GestureDetector(
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
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container(
                                  color: Color(0xFF737373),
                                  child: Container(
                                    child: _bottomForSaleMenu(),
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).canvasColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: const Radius.circular(10),
                                        topRight: const Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                );
                              });
                        },
                        child: Text('For Sale'),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 2.0),
                    Expanded(
                      flex: 1,
                      child: FlatButton(
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              // isScrollControlled: true,
                              builder: (context) {
                                return Container(
                                  height: 400,
                                  color: Color(0xFF737373),
                                  child: Container(
                                    child: _bottomPriceMenu(),
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).canvasColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: const Radius.circular(10),
                                        topRight: const Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                );
                              });
                        },
                        child: Text('Price'),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 2.0),
                    Expanded(
                      flex: 1,
                      child: FlatButton(
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container(
                                  color: Color(0xFF737373),
                                  height: 600,
                                  child: Container(
                                    child: _bottomRoomsMenu(),
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).canvasColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: const Radius.circular(10),
                                        topRight: const Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                );
                              });
                        },
                        child: Text('Beds & Baths'),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 2.0),
                    Expanded(
                      flex: 1,
                      child: FlatButton(
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (context) {
                                return Container(
                                  color: Color(0xFF737373),
                                  height: 180,
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        ListTile(
                                          leading: Icon(Icons.home),
                                          title: Text('Home'),
                                          onTap: () {
                                            showModalBottomSheet(
                                                context: context,
                                                isScrollControlled: true,
                                                builder: (context) {
                                                  return Container(
                                                    color: Color(0xFF737373),
                                                    height: 240,
                                                    child: Container(
                                                      child: Column(
                                                        children: <Widget>[
                                                          ListTile(
                                                            title:
                                                                Text('House'),
                                                            onTap: () {},
                                                          ),
                                                          ListTile(
                                                            title: Text('Flat'),
                                                          ),
                                                          ListTile(
                                                            title: Text(
                                                                'Uper Portion'),
                                                          ),
                                                          ListTile(
                                                            title: Text(
                                                                'Lower Portion'),
                                                            onTap: () {},
                                                          ),
                                                        ],
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: Theme.of(context)
                                                            .canvasColor,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          topLeft: const Radius
                                                              .circular(10),
                                                          topRight: const Radius
                                                              .circular(10),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                });
                                          },
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.map),
                                          title: Text('Plot'),
                                          onTap: () {
                                            showModalBottomSheet(
                                                context: context,
                                                isScrollControlled: true,
                                                builder: (context) {
                                                  return Container(
                                                    color: Color(0xFF737373),
                                                    height: 180,
                                                    child: Container(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: <Widget>[
                                                          ListTile(
                                                            title: Text(
                                                                'Residential Plot'),
                                                            onTap: () {},
                                                          ),
                                                          ListTile(
                                                            title: Text(
                                                                'Commercial Plot'),
                                                          ),
                                                          ListTile(
                                                            title: Text(
                                                                'Agricultral Plot'),
                                                          ),
                                                        ],
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: Theme.of(context)
                                                            .canvasColor,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          topLeft: const Radius
                                                              .circular(10),
                                                          topRight: const Radius
                                                              .circular(10),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                });
                                          },
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.location_city),
                                          title: Text('Commercial'),
                                          onTap: () {
                                            showModalBottomSheet(
                                                context: context,
                                                isScrollControlled: true,
                                                builder: (context) {
                                                  return Container(
                                                    color: Color(0xFF737373),
                                                    height: 240,
                                                    child: Container(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: <Widget>[
                                                          ListTile(
                                                            title:
                                                                Text('Office'),
                                                            onTap: () {},
                                                          ),
                                                          ListTile(
                                                            title: Text('Shop'),
                                                          ),
                                                          ListTile(
                                                            title: Text(
                                                                'Ware House'),
                                                          ),
                                                          ListTile(
                                                            title:
                                                                Text('Others'),
                                                          ),
                                                        ],
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: Theme.of(context)
                                                            .canvasColor,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          topLeft: const Radius
                                                              .circular(10),
                                                          topRight: const Radius
                                                              .circular(10),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                });
                                          },
                                        ),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).canvasColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: const Radius.circular(10),
                                        topRight: const Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                );
                              });
                        },
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
                                  center: new LatLng(33.692705, 73.047778)),
                              layers: [
                                new TileLayerOptions(
                                    urlTemplate:
                                        'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                                    subdomains: ['a', 'b', 'c']),
                                new MarkerLayerOptions(markers: [
                                  new Marker(
                                      width: 45.0,
                                      height: 45.0,
                                      point: new LatLng(33.692705, 73.047778),
                                      builder: (context) => new Container(
                                            child: IconButton(
                                                icon: Icon(Icons.home),
                                                onPressed: () {
                                                  showModalBottomSheet(
                                                      context: context,
                                                      isScrollControlled: true,
                                                      builder: (context) {
                                                        return Container(
                                                          height: 180,
                                                          color:
                                                              Color(0xFF737373),
                                                          child: Container(
                                                            child: Column(
                                                              children: <
                                                                  Widget>[
                                                                ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .attach_money),
                                                                  title: Text(
                                                                      'Rs 2000000'),
                                                                ),
                                                                ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .details),
                                                                  title: Text(
                                                                      'View Detail'),
                                                                  onTap: () => Navigator
                                                                      .pushNamed(
                                                                          context,
                                                                          '/ImageCarousel'),
                                                                ),
                                                                ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .directions),
                                                                  title: Text(
                                                                      'Navigate to property'),
                                                                ),
                                                              ],
                                                            ),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Theme.of(
                                                                      context)
                                                                  .canvasColor,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topLeft:
                                                                    const Radius
                                                                        .circular(10),
                                                                topRight:
                                                                    const Radius
                                                                        .circular(10),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      });
                                                }),
                                          ))
                                ]),
                              ])
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
