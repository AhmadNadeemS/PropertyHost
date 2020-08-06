import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  final String _fullName = "Ali Qureshi";

  final String _status = "Property Dealer";

  final String _listings = "Listings";

  final String _bio =
      "\"Hi, I am a Property Dealer.If you need property suitbale for your needs. You can contact me.\"";

  int _rating = 0;

  void rate(int rating) {
    //Other actions based on rating such as api calls.
    setState(() {
      _rating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => _showContact(context));

    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('My Profile'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.pushNamed(context, '/NotificationList');
            },
          )
        ],
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  _buildProfileImage(),
                  _buildFullName(),
                  _buildStatus(context),
                  SizedBox(height: 10.0),
                  _buildBio(context),
                  SizedBox(height: 8.0),
                  _buildpropertyStatus(context),
                  _buildPropertyList(),
                  _showReviewForm(),
                  _showInformationForm(),
                  _showPersonalInformation(context),
                  _editProfileButton(),
                  SizedBox(height: 8.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCoverImage(Size screenSize) {
    return Container(
      color: Colors.black38,
      height: screenSize.height / 7.5,
    );
  }

  Widget _editProfileButton() {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, '/AgentSignup');
          },
          child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                "Edit Profile",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBio(BuildContext context) {
    TextStyle bioTextStyle = TextStyle(
      fontFamily: 'Spectral',
      fontWeight: FontWeight.w400,
      //try changing weight to w500 if not thin
      fontStyle: FontStyle.italic,
      color: Colors.black,
      fontSize: 16.0,
    );
    return Container(
      width: 270,
      color: Colors.white,
      child: Text(
        _bio,
        textAlign: TextAlign.center,
        style: bioTextStyle,
      ),
    );
  }

  Widget _buildProfileImage() {
    return Center(
      child: Container(
        width: 140.0,
        height: 140.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/1.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(70.0),
          border: Border.all(
            color: Colors.black26,
            width: 6.0,
          ),
        ),
      ),
    );
  }

  Widget _buildFullName() {
    TextStyle _nameTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.black,
      fontSize: 28.0,
      fontWeight: FontWeight.w700,
    );

    return Text(
      _fullName,
      style: _nameTextStyle,
    );
  }

  Widget _buildStatus(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Text(
        _status,
        style: TextStyle(
          fontFamily: 'Spectral',
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  Widget _buildpropertyStatus(BuildContext context) {
    return Container(
      color: Colors.grey[500],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
            child: Text(
              _listings,
              style: TextStyle(
                fontFamily: 'Spectral',
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReviews(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  _status,
                  style: TextStyle(
                    fontFamily: 'Spectral',
                    color: Colors.black,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPropertyList() {
    return Container(
      margin: EdgeInsets.only(top: 15),
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/AdDetail');
            },
            child: Container(
              width: 160.0,
              child: Card(
                child: Wrap(
                  children: <Widget>[
                    Container(
                      height: 120,
                      child: Image.asset(
                        'assets/1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      child: ListTile(
                        title: Text(
                          'heading',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        subtitle: Text(
                          'subHeading',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/AdDetail');
            },
            child: Container(
              width: 160.0,
              child: Card(
                child: Wrap(
                  children: <Widget>[
                    Container(
                      height: 120,
                      child: Image.asset(
                        'assets/1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      child: ListTile(
                        title: Text(
                          'heading',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        subtitle: Text(
                          'subHeading',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/AdDetail');
            },
            child: Container(
              width: 160.0,
              child: Card(
                child: Wrap(
                  children: <Widget>[
                    Container(
                      height: 120,
                      child: Image.asset(
                        'assets/1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      child: ListTile(
                        title: Text(
                          'heading',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        subtitle: Text(
                          'subHeading',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _showInformationForm() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.grey[500],
            width: 410,
            height: 25,
            child: Center(
              child: Text(
                'Personal Information',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _showPersonalInformation(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 14, right: 14, bottom: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: new BorderRadius.only(
          bottomLeft: const Radius.circular(10.0),
          bottomRight: const Radius.circular(10.0),
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.grey[400],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                      width: 70,
                      child: Text(
                        'Name: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    width: 50,
                  ),
                  Text('Ali Qureshi'),
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.grey[200],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                      width: 70,
                      child: Text(
                        'Age: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    width: 50,
                  ),
                  Text('35'),
                ],
              ),
            ),
          ),
          Container(
            height: 70,
            color: Colors.grey[400],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                      width: 70,
                      child: Text(
                        'Address: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    width: 50,
                  ),
                  Flexible(child: Text('DHA Defence, Islamabad')),
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.grey[200],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                      width: 70,
                      child: Text(
                        'Cell No: ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    width: 50,
                  ),
                  Text('+92 333 3424242'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _showContact(BuildContext context) {
    return Container();
  }

  Widget _showReviewForm() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.grey[500],
            width: 370,
            height: 25,
            child: Center(
              child: Text(
                'User Reviews',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
