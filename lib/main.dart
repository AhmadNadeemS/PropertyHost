import 'package:flutter/material.dart';
import 'package:propertyHost/pages/displayReview.dart';
import 'package:provider/provider.dart';
import 'package:propertyHost/pages/search_result.dart';
import 'package:propertyHost/pages/ImageCarousel.dart';
import 'package:propertyHost/pages/login.dart';
import 'package:propertyHost/pages/signup.dart';
import 'package:propertyHost/pages/agentSignup.dart';
import 'package:propertyHost/pages/postAdd.dart';
import 'package:propertyHost/pages/agentDetail.dart';
import 'package:propertyHost/pages/agentsList.dart';
import 'package:propertyHost/pages/forgetPassword.dart';
import 'package:propertyHost/pages/enterCode.dart';
import 'package:propertyHost/pages/liveNotification.dart';
import 'package:propertyHost/pages/choseOnMap.dart';
import 'package:propertyHost/pages/advertise.dart';
import 'package:propertyHost/pages/adsList.dart';
import 'package:propertyHost/pages/adDetail.dart';
import 'package:propertyHost/pages/myProfile.dart';
import 'package:propertyHost/pages/notificationList.dart';

void main() => runApp(MaterialApp(

      routes: {
        '/main': (context) => HomePage(),
        '/SearchResult': (context) => SearcResult(),
        '/ImageCarousel': (context) => ImageCarousel(),
        '/LoginScreen': (context) => LoginPage(),
        '/AgentSignup': (context) => AgentSignUp(),
        '/Signup': (context) => SignUpPage(),
        '/PostAdd': (context) => PostAdd(),
        '/AgentDetail': (context) => AgentDetail(),
        '/AgentsList': (context) => AgentsList(),
        '/ForgetPassword': (context) => ForgetPassword(),
        '/EnterCode': (context) => EnterCode(),
        '/LiveNotification': (context) => LiveNotification(),
        '/ChoseOnMap': (context) => ChoseOnMap(),
        '/Advertise': (context) => Advertise(),
        '/AdsList': (context) => AdsList(),
        '/AdDetail': (context) => AdDetail(),
        '/MyProfile': (context) => MyProfile(),
        '/NotificationList': (context) => NotificationList(),
      },
home: ChangeNotifierProvider(
create: (context) => DisplayReview(),
child: HomePage()),
    )
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Property Host'),
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
      drawer: Theme(
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
                    Navigator.pushNamed(context, '/PostAdd');
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
                    Navigator.pushNamed(context, '/PostAdd');
                  },
                ),
              ),
              SizedBox(height: 1.0),
              Container(
                color: Colors.grey[800],
                child: ListTile(
                  title: Text(
                    'My Profile',
                    style: TextStyle(color: Colors.grey[200]),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/MyProfile');
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
                    Navigator.pushNamed(context, '/AgentsList');
                  },
                ),
              ),
              SizedBox(height: 1.0),
              Container(
                color: Colors.grey[800],
                child: ListTile(
                  title: Text(
                    'Your Ads',
                    style: TextStyle(color: Colors.grey[200]),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/AdsList');
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
                    Navigator.pushNamed(context, '/LiveNotification');
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
                    Navigator.pushNamed(context, '/Advertise');
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
                    Navigator.pushNamed(context, '/AgentSignup');
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
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 4 / 3.5,
              child: Container(
                  height: 300.0,
                  width: 360.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/home.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Find Your Dream Home With Property Host',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey[350],
                            fontWeight: FontWeight.w900,
                            fontSize: 30.0,
                          ),
                        ),
                        SizedBox(height: 60.0),
                        TextField(
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                            letterSpacing: 2.0,
                          ),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey[700], width: 3.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey[100], width: 2.0),
                            ),
                            hintText: 'Enter Address, City or Zip Code',
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                        RaisedButton.icon(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9.0),
                              side: BorderSide(
                                  color: Colors.pink[500], width: 2.0)),
                          onPressed: () {
                            Navigator.pushNamed(context, '/SearchResult');
                          },
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          label: Text(
                            'Search',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1.0,
                            ),
                          ),
                          color: Colors.transparent,
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
