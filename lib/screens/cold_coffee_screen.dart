import 'package:flutter/material.dart';

class ColdCoffeeScreen extends StatefulWidget {
  const ColdCoffeeScreen({Key? key}) : super(key: key);

  @override
  State<ColdCoffeeScreen> createState() => _ColdCoffeeScreenState();
}

class _ColdCoffeeScreenState extends State<ColdCoffeeScreen> {
  var coldcoffee = [
    'Cold Brews',
    'Iced Americano',
    'Iced Espresso',
    'Iced Frappuccino',
    'Iced Latte',
    'Iced Mochas',
  ];

  var ccimages = [
    'assets/images/cold_coffees/cold_brews.png',
    'assets/images/cold_coffees/iced_americano.png',
    'assets/images/cold_coffees/iced_espresso.png',
    'assets/images/cold_coffees/iced_frappuccino.png',
    'assets/images/cold_coffees/iced_latte.png',
    'assets/images/cold_coffees/iced_mochas.png',
  ];

  var ccprice = [
    '200/-',
    '250/-',
    '140/-',
    '100/-',
    '190/-',
    '300/-',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Cold Coffee Screen'),
      ),
      body: ListView(
        children: [
          for (int i = 0; i<coldcoffee.length; i++)
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
                      "${ccimages[i]}",
                      width: 150,
                      height: 150,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: Text(
                      '${coldcoffee[i]}',
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
                          '${ccprice[i]}',
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
                          padding: EdgeInsets.only(left: 12,right: 12,top: 10,bottom: 10),
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
                          padding: EdgeInsets.only(left: 23,right: 23,top: 5,bottom: 5),
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
