import 'package:coffee_shop_app/screens/Home_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'log_in_screen.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  var store = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController rspController = TextEditingController();
  TextEditingController subjectController = TextEditingController();

  List main = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Feedback'),
      ),
      body: ListView(
        children: [
          Container(
            height: 555,
            width: 300,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 100, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.withOpacity(0.5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: 3,
                  blurRadius: 7,
                )
              ],
            ),
            child: Column(
              children: [
                Text(
                  'Feedback Form',
                  style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                Form(
                  key: store,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 50),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: TextFormField(
                          cursorColor: Colors.white,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^[A-Za-z ]+$')),
                          ],
                          controller: nameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: Colors.white60,
                            labelText: "Name",
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: "Enter Your Name",
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "User Name Can't be Empty";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: TextFormField(
                          cursorColor: Colors.white,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^[A-Za-z@.]+$')),
                          ],
                          controller: emailController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: Colors.white60,
                            labelText: "Email id",
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: "Enter Your Email id",
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Email id Can't be Empty";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: TextFormField(
                          cursorColor: Colors.white,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^[A-Za-z ]+$')),
                          ],
                          controller: subjectController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: Colors.white60,
                            labelText: "Subject",
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: "Enter Your Subject",
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "User Name Can't be Empty";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: TextFormField(
                          cursorColor: Colors.white,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^[0-9A-Za-z@#$ ]+$')),
                          ],
                          controller: rspController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: Colors.white60,
                            labelText: "Message",
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: "Enter Your Message",
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Message Can't be Empty";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    if (store.currentState!.validate()) {
                      main.add([
                        nameController.text,
                        emailController.text,
                        rspController.text,
                        subjectController.text,
                      ]);
                      setState(() {});
                      nameController.clear();
                      emailController.clear();
                      rspController.clear();
                      subjectController.clear();
                      showsnk(context);
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Homepage(data: main),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  showsnk(context) {
    var snk = SnackBar(
      content: Text('Thanks for Feedback Us.'),
      backgroundColor: Colors.green,
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.horizontal,
    );
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snk);
  }
}
