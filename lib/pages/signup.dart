import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUpPage> {
  String name, email, password;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  Widget _buildLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Text(
            'Property Host',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height / 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildFirstNameRow() {
    return Form(
      //key: formKey,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Enter Name!';
                }
                return null;
              },
              keyboardType: TextInputType.text,
//              onChanged: (value) {
//                setState(() {
//                  name = value;
//                });
//              },
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.account_circle,
                    color: Colors.grey[800],
                  ),
                  labelText: 'Enter First Name'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSecondNameRow() {
    return Form(
      //key: formKey,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Enter Name!';
                }
                return null;
              },
              keyboardType: TextInputType.text,
//              onChanged: (value) {
//                setState(() {
//                  name = value;
//                });
//              },
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.account_circle,
                    color: Colors.grey[800],
                  ),
                  labelText: 'Enter Last Name'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmailRow() {
    return Form(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Email is Required';
                }

                if (!RegExp(
                        r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                    .hasMatch(value)) {
                  return 'Please enter a valid email Address';
                }

                return null;
              },
              onSaved: (String value) {
                email = value;
              },
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Colors.grey[800],
                  ),
                  labelText: 'Phone No'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPasswordRow() {
    return Form(
      //key: _homeKey,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Enter Password!';
                }
                return null;
              },
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.grey[800],
                ),
                labelText: 'Password',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSignUpButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.4 * (MediaQuery.of(context).size.height / 25),
          width: 5 * (MediaQuery.of(context).size.width / 10),
          margin: EdgeInsets.only(top: 40),
          child: RaisedButton(
            //elevation: 5.0,
            color: Colors.grey[800],

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),

            onPressed: () {
              if (formKey.currentState.validate()) {
                scaffoldKey.currentState.showSnackBar(SnackBar(
                  content: Text('Form Validation Successful'),
                ));
              } else {
                scaffoldKey.currentState.showSnackBar(SnackBar(
                  content: Text('Error in Form'),
                ));
              }
            },
            child: Text(
              "Sign Up",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: MediaQuery.of(context).size.height / 40,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          child: Container(
            margin: EdgeInsets.only(bottom: 20),
            //padding: EdgeInsets.only(bottom: 0),
            height: 580,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                _buildFirstNameRow(),
                _buildSecondNameRow(),
                _buildEmailRow(),
                _buildPasswordRow(),
                _buildSignUpButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xfff2f3f7),
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 1.02,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildLogo(),
                  _buildContainer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
