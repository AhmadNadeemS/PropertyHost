import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:flutter/material.dart';

class AgentsList extends StatefulWidget {
  @override
  _AgentsListState createState() => _AgentsListState();
}

class _AgentsListState extends State<AgentsList> {
  var rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('List of Agents'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, '/LoginScreen');
            },
          )
        ],
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 55.0,
                          height: 55.0,
                          //color: Colors.green,

                          child: CircleAvatar(
                            //backgroundColor: Colors.green,
                            //foregroundColor: Colors.green,
                            backgroundImage: AssetImage('assets/1.jpg'),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 5),
                              child: Text(
                                'Ali Qureshi',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: FlatButton(
                          color: Colors.grey[800],
                          onPressed: () {
                            Navigator.pushNamed(context, '/AgentDetail');
                          },
                          child: Text('Visit Profile',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              )),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Colors.grey[500],
                                  width: 1.5,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(15)),
                        ),
//                        SmoothStarRating(
//                            allowHalfRating: false,
//                            onRated: (v) {
//                            },
//                            starCount: 5,
//                            rating: rating,
//                            size: 20,
//                            isReadOnly:true,
//                            //     fullRatedIconData: Icons.blur_off,
//                            //     halfRatedIconData: Icons.blur_on,
//                            color: Colors.yellow,
//                            borderColor: Colors.orange,
//                            spacing:0.0
//                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 55.0,
                          height: 55.0,
                          //color: Colors.green,

                          child: CircleAvatar(
                            //backgroundColor: Colors.green,
                            //foregroundColor: Colors.green,
                            backgroundImage: AssetImage('assets/2.jpg'),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 5),
                              child: Text(
                                'Ali Qureshi',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: FlatButton(
                          disabledColor: Colors.grey[800],
                          onPressed: null,
                          child: Text('Visit Profile',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              )),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Colors.grey[500],
                                  width: 1.5,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(15)),
                        ),
//                        SmoothStarRating(
//                            allowHalfRating: false,
//                            onRated: (v) {
//                            },
//                            starCount: 5,
//                            rating: rating,
//                            size: 20,
//                            isReadOnly:true,
//                            //     fullRatedIconData: Icons.blur_off,
//                            //     halfRatedIconData: Icons.blur_on,
//                            color: Colors.yellow,
//                            borderColor: Colors.orange,
//                            spacing:0.0
//                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 55.0,
                          height: 55.0,
                          //color: Colors.green,

                          child: CircleAvatar(
                            //backgroundColor: Colors.green,
                            //foregroundColor: Colors.green,
                            backgroundImage: AssetImage('assets/1.jpg'),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 5),
                              child: Text(
                                'Ali Qureshi',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: FlatButton(
                          disabledColor: Colors.grey[800],
                          onPressed: null,
                          child: Text('Visit Profile',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              )),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Colors.grey[500],
                                  width: 1.5,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(15)),
                        ),
//                        SmoothStarRating(
//                            allowHalfRating: false,
//                            onRated: (v) {
//                            },
//                            starCount: 5,
//                            rating: rating,
//                            size: 20,
//                            isReadOnly:true,
//                            //     fullRatedIconData: Icons.blur_off,
//                            //     halfRatedIconData: Icons.blur_on,
//                            color: Colors.yellow,
//                            borderColor: Colors.orange,
//                            spacing:0.0
//                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 55.0,
                          height: 55.0,
                          //color: Colors.green,

                          child: CircleAvatar(
                            //backgroundColor: Colors.green,
                            //foregroundColor: Colors.green,
                            backgroundImage: AssetImage('assets/3.jpg'),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 5),
                              child: Text(
                                'Ali Qureshi',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: FlatButton(
                          disabledColor: Colors.grey[800],
                          onPressed: null,
                          child: Text('Visit Profile',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              )),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Colors.grey[500],
                                  width: 1.5,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(15)),
                        ),
//                        SmoothStarRating(
//                            allowHalfRating: false,
//                            onRated: (v) {
//                            },
//                            starCount: 5,
//                            rating: rating,
//                            size: 20,
//                            isReadOnly:true,
//                            //     fullRatedIconData: Icons.blur_off,
//                            //     halfRatedIconData: Icons.blur_on,
//                            color: Colors.yellow,
//                            borderColor: Colors.orange,
//                            spacing:0.0
//                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
