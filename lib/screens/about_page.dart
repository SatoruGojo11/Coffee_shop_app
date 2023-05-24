import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('About Us'),
      ),
      body: ListView(
        children: [
          Container(
            height: 650,
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
                  'About Us',
                  style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 150,
                  width: 280,
                  child: Text(
                    '     Introducing the Cafe Tree, your gateway to an extraordinary coffee experience at your fingertips. Our app is designed to revolutionize the way you connect with our coffee shop, offering convenience, personalized service, and a seamless coffee journey right from your mobile device.',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  'Social Media',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Email id :-',
                          style: TextStyle(color: Colors.white60),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('cafetree1212@gmail.com'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'LinkedIn :- ',
                          style: TextStyle(color: Colors.white60),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('@cafetree12'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Twitter :-',
                          style: TextStyle(color: Colors.white60),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('@cafetree12'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Facebook :-',
                          style: TextStyle(color: Colors.white60),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('@cafetree12'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Instagram :-',
                          style: TextStyle(color: Colors.white60),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('@cafetree12'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Youtube :-',
                          style: TextStyle(color: Colors.white60),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('@cafetree12'),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
