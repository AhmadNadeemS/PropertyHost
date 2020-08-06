import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:propertyHost/models/transaction.dart';
import 'package:propertyHost/widgets/transaction_list.dart';
import 'package:provider/provider.dart';
import './displayReview.dart';
import '../widgets/user_transaction.dart';
import '../widgets/new_transaction.dart';
class AgentDetail extends StatefulWidget {
  @override
  _AgentDetailState createState() => _AgentDetailState();
}

class _AgentDetailState extends State<AgentDetail> {
//  final titleController = TextEditingController();
//  var items = ['⭐', '⭐⭐', '⭐⭐⭐', '⭐⭐⭐⭐', '⭐⭐⭐⭐⭐'];
//  final amountController = TextEditingController();

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
  final List<Transaction> _userTransactions = [
  ];

  void _addNewTransaction(String txTitle, String txRating) {
    final newTx = Transaction(
      title: txTitle,
      rating: txRating,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
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
        title: Text('Agent Detail'),
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
  //                _showReviewList(),
                  TransactionList(_userTransactions),


//                  UserTransactions(NewTransaction(_addNewTransation)),
                  _showInformationForm(),
                  _showPersonalInformation(context),
                  SizedBox(height: 8.0),
//                  _showContactForm(),
                  _showName(),
                  //_showContact(context),
                  NewTransaction(_addNewTransaction),
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
          Container(
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
          Container(
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
          Container(
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
        ],
      ),
    );
  }

  Widget _showName() {
    return Container(
      margin: EdgeInsets.all(14),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: Colors.black26,
        ),
        borderRadius: new BorderRadius.only(
          bottomLeft: const Radius.circular(10.0),
          bottomRight: const Radius.circular(10.0),
        ),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50, bottom: 10),
            child: TextFormField(
              maxLines: 1,
              autofocus: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
                hintText: 'Enter Name',
                icon: Icon(Icons.account_circle),
              ),
              validator: (value) =>
                  value.isEmpty ? 'Name can\'t be empty' : null,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50, bottom: 10),
            child: TextFormField(
              keyboardType: TextInputType.phone,
              maxLines: 1,
              autofocus: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
                hintText: 'Enter Number',
                icon: Icon(Icons.dialer_sip),
              ),
              validator: (value) =>
                  value.isEmpty ? 'Number can\'t be empty' : null,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50, bottom: 10),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              maxLines: 1,
              autofocus: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
                hintText: 'Enter Email',
                icon: Icon(Icons.email),
              ),
              validator: (value) =>
                  value.isEmpty ? 'Email can\'t be empty' : null,
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: 50, right: 50, bottom: 10),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    maxLines: 5,
                    autofocus: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                      hintText: 'Message',
                      icon: Icon(Icons.description),
                    ),
                    validator: (value) =>
                        value.isEmpty ? 'Message can\'t be empty' : null,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40, top: 10),
                    width: 165,
                    child: FlatButton(
                      disabledColor: Colors.grey[800],
                      onPressed: null,
                      child: Text('Contact',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.grey[500],
                            width: 1.5,
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

  Widget _showContactForm() {
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
                'Contact Form',
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

  Widget _showInformationForm() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.grey[500],
            width: 4320,
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
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              "Write a review ",
              style: Theme.of(context).textTheme.title.copyWith(fontSize: 20.0),
            ),
          ),
          Center(
            child: new Container(
              width: 500.0,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new GestureDetector(
                    child: new Icon(
                      Icons.star,
                      color: _rating >= 1 ? Colors.orange : Colors.grey,
                    ),
                    onTap: () => rate(1),
                  ),
                  new GestureDetector(
                    child: new Icon(
                      Icons.star,
                      color: _rating >= 2 ? Colors.orange : Colors.grey,
                    ),
                    onTap: () => rate(2),
                  ),
                  new GestureDetector(
                    child: new Icon(
                      Icons.star,
                      color: _rating >= 3 ? Colors.orange : Colors.grey,
                    ),
                    onTap: () => rate(3),
                  ),
                  new GestureDetector(
                    child: new Icon(
                      Icons.star,
                      color: _rating >= 4 ? Colors.orange : Colors.grey,
                    ),
                    onTap: () => rate(4),
                  ),
                  new GestureDetector(
                    child: new Icon(
                      Icons.star,
                      color: _rating >= 5 ? Colors.orange : Colors.grey,
                    ),
                    onTap: () => rate(5),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  maxLines: 5,
                  autofocus: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      borderSide: BorderSide(),
                    ),
                    hintText: 'Write Review',
                  ),
                  validator: (value) =>
                  value.isEmpty ? 'Review can\'t be empty' : null,
                ),
                FlatButton(
                  //disabledColor: Colors.grey[800],
                  color: Colors.grey[800],
                  onPressed: () => Provider.of<DisplayReview>(context,listen: false).addTaskInList(),
                  child: Text('Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      )),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.grey[700],
                          width: 1.5,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(0)),
                ),
              ],

              // ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _showReviewForm() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.grey[700],
            width: 330,
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
Widget _showReviewList() {
  return Container(
    width: 350,
    height: 200,
    margin: EdgeInsets.only(left: 14, right: 14, bottom: 10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      border: Border.all(
        width: 3,
        color: Colors.black26,
      ),
      borderRadius: new BorderRadius.only(
        bottomLeft: const Radius.circular(10.0),
        bottomRight: const Radius.circular(10.0),),
    ),
    child: Consumer<DisplayReview>(
      builder: (context, todo, child){
        return ListView.builder(
            itemCount: todo.taskList.length,
            itemBuilder: (context, index){
              return Container(
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 32, right: 32, top: 8, bottom: 8),
                  title: Text(todo.taskList[index].title, style : TextStyle(color: Colors.black87,
                      fontWeight: FontWeight.bold),),
                  subtitle: Text(todo.taskList[index].detail, style: TextStyle(color: Colors.black45,
                      fontWeight: FontWeight.bold),),

                  trailing: Icon(Icons.check_circle, color: Colors.greenAccent,),
                ),
                margin: EdgeInsets.only(bottom: 8, left: 16, right: 16),
              );
            }
        );
      },
    ),


  );
}

