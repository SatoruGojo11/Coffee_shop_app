import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  var orders = [
    'Americano',
    'Espresso',
    'Iced Frappuccino',
    'Milk Tea',
    'Mountain Dew',
  ];

  var odimages = [
    'assets/images/hot_coffees/americano.png',
    'assets/images/hot_coffees/espresso.png',
    'assets/images/cold_coffees/iced_frappuccino.png',
    'assets/images/hot_teas/milk_tea.png',
    'assets/images/cold_drinks/mountain_dew.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Orders'),
        ),
        body: ListView(
          children: [
            for (int i = 0; i < orders.length; i++)
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
                        "${odimages[i]}",
                        width: 150,
                        height: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: Text(
                        '${orders[i]}',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Order Completed ',
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,),
                    )
                  ],
                ),
              ),
          ],
        ));
  }
}
