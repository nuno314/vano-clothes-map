import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:heart_breaker_blog_app/services/crud.dart';
import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';

class LetteringPage extends StatefulWidget {
  const LetteringPage({Key? key}) : super(key: key);

  @override
  State<LetteringPage> createState() => _LetteringPageState();
}

class _LetteringPageState extends State<LetteringPage> {
  late String _author, _title, _content;
  final ImagePicker _picker = ImagePicker();

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  CRUDMethods crudMethods = CRUDMethods();
  File? _selectedImage;
  bool _isLoading = false;

  Future getImage() async {
    XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    File? _image = File(image!.path);
    setState(() {
      _selectedImage = _image;
    });
  }

  uploadBlog() async {
    if (_selectedImage != null) {
      setState(() {
        _isLoading = true;
      });

      Reference storage = FirebaseStorage.instance
          .ref()
          .child("blogImages")
          .child("${randomAlphaNumeric(9)}.jpg");
      UploadTask uploadTask = storage.putFile(_selectedImage!);
      var downloadUrl = await (await uploadTask).ref.getDownloadURL();

      Map<String, String> blogMap = {
        "downloadUrl": downloadUrl,
        "author": _author,
        "title": _title,
        "content": _content
      };

      crudMethods.addData(blogMap).then((value) => {Navigator.pop(context)});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Flutter",
              style: TextStyle(fontSize: 22),
            ),
            Text(
              "Blog",
              style: TextStyle(fontSize: 22, color: Colors.blue),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
          GestureDetector(
            // onTap: () async {
            //   await users.add({'name': _author}).then((value) => print(value));
            // },
            onTap: uploadBlog,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.file_upload)),
          )
        ],
      ),
      body: _isLoading
          ? Container(
              alignment: Alignment.center,
              child: const CircularProgressIndicator(),
            )
          : Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                      onTap: () {
                        getImage();
                      },
                      child: _selectedImage != null
                          ? Container(
                              margin: EdgeInsets.symmetric(horizontal: 16),
                              height: 170,
                              width: MediaQuery.of(context).size.width,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: Image.file(
                                  _selectedImage!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          : Container(
                              margin: EdgeInsets.symmetric(horizontal: 16),
                              height: 170,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6)),
                              width: MediaQuery.of(context).size.width,
                              child: Icon(
                                Icons.add_a_photo,
                                color: Colors.black45,
                              ),
                            )),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(hintText: "Author"),
                          onChanged: (val) {
                            _author = val;
                          },
                        ),
                        TextField(
                          decoration: InputDecoration(hintText: "Title"),
                          onChanged: (val) {
                            _title = val;
                          },
                        ),
                        TextField(
                          decoration: InputDecoration(hintText: "Letter"),
                          onChanged: (val) {
                            _content = val;
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
