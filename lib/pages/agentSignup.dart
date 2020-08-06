import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../models/ImageUploadModel.dart';

class AgentSignUp extends StatefulWidget {

  @override
  _AgentSignUpState createState() => _AgentSignUpState();
}

class _AgentSignUpState extends State<AgentSignUp> {
  List<Object> images = List<Object>();
  Future<File> _imageFile;

  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      images.add("Add Image");
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //       key: scaffoldKey,
        resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xfff2f3f7),
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 1.1,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
              ),
              Container(
                color: Colors.grey[800],
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

  Future _onAddImageClick(int index) async {
    setState(() {
      _imageFile = ImagePicker.pickImage(source: ImageSource.gallery);
      getFileImage(index);
    });
  }

  void getFileImage(int index) async {
//    var dir = await path_provider.getTemporaryDirectory();

    _imageFile.then((file) async {
      setState(() {
        ImageUploadModel imageUpload = new ImageUploadModel();
        imageUpload.isUploaded = false;
        imageUpload.uploading = false;
        imageUpload.imageFile = file;
        imageUpload.imageUrl = '';
        images.replaceRange(index, index + 1, [imageUpload]);
      });
    });
  }


  Widget _buildLogo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Text(
            'Property Host',
            style: TextStyle(
              fontSize: MediaQuery
                  .of(context)
                  .size
                  .height / 25,
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
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          child: Container(
            margin: EdgeInsets.only(bottom: 20),
            //padding: EdgeInsets.only(bottom: 0),
            height: 990,
            width: MediaQuery
                .of(context)
                .size
                .width * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
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
                          fontSize: MediaQuery
                              .of(context)
                              .size
                              .height / 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                _showName(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _showName() {
    return Container(
      height: 890,
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
              value.isEmpty
                  ? 'Name can\'t be empty'
                  : null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              maxLines: 1,
              autofocus: false,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.title,
                    color: Colors.grey[800],
                  ),
                  labelText: 'Enter your Title'),
              validator: (value) =>
              value.isEmpty ? 'Title can\'t be empty' : null,
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
                    Icons.invert_colors,
                    color: Colors.grey[800],
                  ),
                  labelText: 'Enter Age:'),
              validator: (value) =>
              value.isEmpty
                  ? 'Age can\'t be empty'
                  : null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              maxLines: 2,
              autofocus: false,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.add_location,
                    color: Colors.grey[800],
                  ),
                  labelText: 'Enter Your Location:'),
              validator: (value) =>
              value.isEmpty ? 'Address can\'t be empty' : null,
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
          Container(
            //padding: EdgeInsets.only(left: 50, right: 50, bottom: 10),
            //color: Colors.grey[200],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    maxLines: 4,
                    autofocus: false,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.description,
                          color: Colors.grey[800],
                        ),
                        labelText: 'Your Description:'),
                    //textAlign: TextAlign,
                    validator: (value) =>
                    value.isEmpty ? 'Description can\'t be empty' : null,
                  ),
                  Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 7),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceAround,
                                  children: <Widget>[
                                    RaisedButton(
                                      child: Text("Select Profile Picture"),
//                        color:
//                        isButtonPressed6 ? Colors.lightGreen : Colors.grey[200],
//                        onPressed: () {
//                          setState(() {
//                            isButtonPressed6 = !isButtonPressed6;
//                          });
//                        },
//                        textColor: Colors.black,
                                      padding: EdgeInsets.fromLTRB(
                                          10, 10, 10, 10),
                                      splashColor: Colors.grey,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
   width: 1*MediaQuery.of(context).size.width *1/4,
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 1 / 6,
                      child: GridView.count(
                        crossAxisCount: 1,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        children: List.generate(images.length, (index) {
                          if (images[index] is ImageUploadModel) {
                            ImageUploadModel uploadModel = images[index];
                            return Card(
                              clipBehavior: Clip.antiAlias,
                              child: Stack(
                                children: <Widget>[
                                  Image.file(
                                    uploadModel.imageFile,
                                    width: 300,
                                    height: 300,
                                  ),
                                  Positioned(
                                    right: 5,
                                    top: 5,
                                    child: InkWell(
                                      child: Icon(
                                        Icons.remove_circle,
                                        size: 20,
                                        color: Colors.red,
                                      ),
                                      onTap: () {
                                        setState(() {
                                          images.replaceRange(
                                              index, index + 1, ['Add Image']);
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            );
                          } else {
                            return Card(
                              child: IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {
                                  _onAddImageClick(index);
                                },
                              ),
                            );
                          }
                        }),
                      )),
                ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    width: 165,
                    child: FlatButton(
                      disabledColor: Colors.grey[800],
                      onPressed: null,
                      child: Text('Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.grey[800],
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

  Widget _uploadImagesInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 14),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Upload Images : ",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _showSelectImages() {
    return Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      RaisedButton(
                        child: Text("Select Profile Picture"),
//                        color:
//                        isButtonPressed6 ? Colors.lightGreen : Colors.grey[200],
//                        onPressed: () {
//                          setState(() {
//                            isButtonPressed6 = !isButtonPressed6;
//                          });
//                        },
//                        textColor: Colors.black,
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        splashColor: Colors.grey,
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget _showAddImages() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height * 1 / 2,
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: List.generate(images.length, (index) {
              if (images[index] is ImageUploadModel) {
                ImageUploadModel uploadModel = images[index];
                return Card(
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    children: <Widget>[
                      Image.file(
                        uploadModel.imageFile,
                        width: 300,
                        height: 300,
                      ),
                      Positioned(
                        right: 5,
                        top: 5,
                        child: InkWell(
                          child: Icon(
                            Icons.remove_circle,
                            size: 20,
                            color: Colors.red,
                          ),
                          onTap: () {
                            setState(() {
                              images.replaceRange(
                                  index, index + 1, ['Add Image']);
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return Card(
                  child: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      _onAddImageClick(index);
                    },
                  ),
                );
              }
            }),
          )),
    );
  }
}