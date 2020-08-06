import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
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
        elevation: 10.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 50, 50, 0),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text(
                        "Forget Password",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Form(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(50, 100, 50, 50),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.phone,
                                color: Colors.grey[900],
                              ),
                              labelText: 'Phone No'),
                        ),
                      ],
                    ),
                  ),
                ),
                RaisedButton(
                  elevation: 5.0,
                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: Colors.grey[600], width: 2.0)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/EnterCode');
                  },
                  child: Text(
                    'Receive Code',
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
            ),
          ),
        ),
      ),
    );
  }
}
