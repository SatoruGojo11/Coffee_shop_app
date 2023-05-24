import 'package:coffee_shop_app/screens/sign_up_screen.dart';
import 'package:coffee_shop_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Home_Page.dart';

class LoginScreen extends StatefulWidget {
  final List data;

  const LoginScreen({super.key, required this.data});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var store = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  List main = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WelcomeScreen()),
              );
            },
            icon: Icon(
              Icons.arrow_back,
              size: 28,
            )),
        backgroundColor: Colors.orange,
        title: Text('Log in'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: store,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 200),
                  Padding(
                    padding: EdgeInsets.all(10),
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
                        } else if (value != "${widget.data[0][1]}") {
                          return "You don't have an Account.";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      cursorColor: Colors.white,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'^[0-9A-Za-z@#$]+$')),
                      ],
                      obscureText: true,
                      controller: pwdController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Colors.white60,
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.white),
                        hintText: "Enter Your Password",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password Can't be Empty";
                        } else if (value != "${widget.data[0][2]}") {
                          return "Please type correct Password.";
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Forgot your password?',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                if (store.currentState!.validate()) {
                  main.add([
                    nameController.text,
                    emailController.text,
                    pwdController.text,
                  ]);
                  setState(() {});
                  nameController.clear();
                  emailController.clear();
                  pwdController.clear();
                  showsnk(context);
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Homepage(
                      data: main,
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
              ),
              child: Text('Log in'),
            ),
          ],
        ),
      ),
    );
  }

  showsnk(context) {
    var snk = SnackBar(
      content: Text('Log in Success'),
      backgroundColor: Colors.green,
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.horizontal,
    );
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snk);
  }
}
