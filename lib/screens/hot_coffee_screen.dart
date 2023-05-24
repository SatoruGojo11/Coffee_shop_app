import 'package:flutter/material.dart';

class HotCofeeScreen extends StatefulWidget {
  const HotCofeeScreen({Key? key}) : super(key: key);

  @override
  State<HotCofeeScreen> createState() => _HotCofeeScreenState();
}

class _HotCofeeScreenState extends State<HotCofeeScreen> {
  var hotcoffee = [
    'Affogato',
    'Americano',
    'Cappuccino',
    'Espresso',
    'Latte',
    'Macchiato',
  ];

  var hcimages = [
    'assets/images/hot_coffees/affogato.png',
    'assets/images/hot_coffees/americano.png',
    'assets/images/hot_coffees/cappuccino.png',
    'assets/images/hot_coffees/espresso.png',
    'assets/images/hot_coffees/latte.png',
    'assets/images/hot_coffees/machhiato.png',
  ];

  var hcprice = [
    '150/-',
    '200/-',
    '180/-',
    '300/-',
    '260/-',
    '130/-',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Hot Coffee Screen'),
      ),
      body: ListView(
        children: [
          for (int i = 0; i < hotcoffee.length; i++)
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
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
                      "${hcimages[i]}",
                      width: 150,
                      height: 150,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: Text(
                      '${hotcoffee[i]}',
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
                          '${hcprice[i]}',
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
