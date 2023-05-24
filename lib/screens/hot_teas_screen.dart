import 'package:flutter/material.dart';

class HotTeaScreen extends StatefulWidget {
  const HotTeaScreen({Key? key}) : super(key: key);

  @override
  State<HotTeaScreen> createState() => _HotTeaScreenState();
}

class _HotTeaScreenState extends State<HotTeaScreen> {
  var hotteas = [
    'Black Tea',
    'Green Tea',
    'Milk Tea',
    'Motcha Green Latte',
  ];

  var htimages = [
    'assets/images/hot_teas/black_tea.png',
    'assets/images/hot_teas/green_tea.png',
    'assets/images/hot_teas/milk_tea.png',
    'assets/images/hot_teas/green_latte.png',
  ];

  var htprice = [
    '100/-',
    '240/-',
    '50/-',
    '300/-',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Hot Tea Screen"),
      ),
      body: ListView(
        children: [
          for (int i = 0; i < hotteas.length; i++)
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.withOpacity(0.2),
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
                  Container(
                    child: Image.asset(
                      "${htimages[i]}",
                      width: 200,
                      height: 200,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: Text(
                      '${hotteas[i]}',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '${htprice[i]}',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.8)),
                        ),
                        Text(
                          '60 ml',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white60),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.only(
                              left: 12, right: 12, top: 10, bottom: 10),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Add to Favorites',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.only(
                              left: 23, right: 23, top: 5, bottom: 5),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Buy now',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
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
