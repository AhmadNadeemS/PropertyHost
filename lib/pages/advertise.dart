import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Advertise extends StatefulWidget {
  @override
  _AdvertiseState createState() => _AdvertiseState();
}

class _AdvertiseState extends State<Advertise> {
  String _selectedPurpose;
  List<String> _listOfCategory = [
    '3 Marla Luxury House',
    '5 Marla Plot',
  ];
  String selectedIndexCategory = '3 Marla Luxury House';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //       key: scaffoldKey,
        resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: false,
        //backgroundColor: Colors.grey[800],
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
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 1.083,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[700],
//                    borderRadius: BorderRadius.only(
//                      bottomLeft: const Radius.circular(70),
//                      bottomRight: const Radius.circular(70),
//                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.grey[700],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _buildLogo(context),
                    _buildContainer(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _showName() {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              maxLines: 1,
              autofocus: false,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.account_circle,
                    color: Colors.grey[800],
                  ),
                  labelText: 'Enter Full Name'),
              validator: (value) =>
                  value.isEmpty ? 'Name can\'t be empty' : null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.phone,
              maxLines: 1,
              autofocus: false,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.dialer_sip,
                    color: Colors.grey[800],
                  ),
                  labelText: 'Enter Number:'),
              validator: (value) =>
                  value.isEmpty ? 'Number can\'t be empty' : null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              maxLines: 1,
              autofocus: false,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.grey[800],
                  ),
                  labelText: 'Enter Email:'),
              validator: (value) =>
                  value.isEmpty ? 'Email can\'t be empty' : null,
            ),
          ),
          _showPurposeDropDown(),
          Container(
            //padding: EdgeInsets.only(left: 50, right: 50, bottom: 10),
            //color: Colors.grey[200],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    maxLines: 3,
                    autofocus: false,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.description,
                          color: Colors.grey[800],
                        ),
                        labelText: 'Enter Message:'),
                    //textAlign: TextAlign,
                    validator: (value) =>
                        value.isEmpty ? 'Message can\'t be empty' : null,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 30),
                    width: 165,
                    child: FlatButton(
                      disabledColor: Colors.grey[800],
                      onPressed: null,
                      child: Text('Send Email',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.grey[500],
                            width: 2.5,
                            style: BorderStyle.solid),
                      ),
                    ),
                  ),
                ],

                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLogo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Text(
            'Advertise Property',
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

  Widget _buildContainer(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
//          borderRadius: BorderRadius.all(
//            Radius.circular(20),
//          ),
          child: Container(
            margin: EdgeInsets.only(bottom: 20),
            //padding: EdgeInsets.only(bottom: 0),
            height: 580,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              // borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _showName(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _showPurposeDropDown() {
    return Container(
      child: Column(
        children: <Widget>[
          //_getCityDropDown(),
          _getPurposeDropDown(),
          //  _getProvinceDropDown(),
          //_selectedProvince == null ? Container() : _getCityDropDown(),
        ],
      ),
    );
  }

  Widget _getPurposeDropDown() {
    return Row(
      children: <Widget>[
        //Icon(Icons.map, color: Colors.grey),
        Container(
            //margin: EdgeInsets.only(left: 5,),
            //width: 7.0,
            ),
        Flexible(
          child: ButtonTheme(
            alignedDropdown: true,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                  prefixIcon: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.home,
                      color: Colors.grey[800],
                    ),
                  ),
                  labelText: 'Select Property:'),
              value: _selectedPurpose,
              onChanged: (newValue) {
                setState(() {
                  _selectedPurpose = newValue;
                  //                _selectedPropertyTypeData = _getCities().first;
                });
              },
              items: _listOfCategory.map((purpose) {
                return DropdownMenuItem(
                  child: Text(purpose),
                  value: purpose,
                );
              }).toList(),
              validator: (value) =>
                  value == null ? 'Please select a property' : null,
            ),
          ),
        ),
      ],
    );
  }
}
