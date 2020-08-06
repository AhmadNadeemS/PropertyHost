import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final _controller = TextEditingController();

  var items = ['⭐', '⭐⭐', '⭐⭐⭐', '⭐⭐⭐⭐', '⭐⭐⭐⭐⭐'];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
          _showContact(context),
          ],
        ),
      ),
    );
  }

  Widget _showContact(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.purple,
          width: 2,
        ),
      ),
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Center(
              child: Text(
                "Write a review ",
                style: Theme
                    .of(context)
                    .textTheme
                    // ignore: deprecated_member_use
                    .title
                    .copyWith(fontSize: 20.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: TextField(
              maxLines: 2,
              decoration: InputDecoration(labelText: 'Description'),
              controller: titleController,
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  readOnly: true,
                  controller: _controller,
                  autofocus: false,

                  decoration: InputDecoration(

                    hintText: 'Select Rating',
                    suffixIcon: PopupMenuButton<String>(
                      icon: const Icon(Icons.arrow_drop_down),
                      onSelected: (String value) {
                        _controller.text = value;
                      },
                      itemBuilder: (BuildContext context) {
                        return items
                            .map<PopupMenuItem<String>>((String value) {
                          return new PopupMenuItem(
                              child: new Text(value), value: value);
                        }).toList();
                      },
                    ),
                  ),
                  validator: (value) =>
                  value.isEmpty ? 'Rating can\'t be empty' : null,
                ),
                Container(
                  //margin: EdgeInsets.only(top: 20),
                  child: FlatButton(
                    //disabledColor: Colors.grey[800],
                    color: Colors.grey[800],
                    onPressed: () {
                      widget.addTx(
                        titleController.text,

                        //double.parse(amountController.text),
                        _controller.text,
                      );
                      titleController.clear();
                      _controller.clear();
                    },
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
                ),
              ],

              // ),
            ),
          ),
        ],
      ),
    );
  }
}