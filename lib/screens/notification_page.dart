import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

  var notifications = [
    'Your order has been successfully placed and is being processed.',
    'Your order is ready for pickup at the specified location. Please visit the counter to collect it.',
    'Your order is on its way to your specified delivery address. You can track the delivery progress in real-time.',
    'Congratulations! You have earned enough points to unlock a free drink. Redeem it on your next visit.',
    'Introducing our new seasonal drink, the Iced Frappuccino. Try it now and enjoy the flavors of the season.',
    'Join us for a coffee tasting event this weekend. Limited spots available.',
    "It's happy hour at our coffee shop! Enjoy 20% off on all beverages between 4 pm to 6 pm every day.",
    'A new version of our app is now available. Update to access the latest features, improved performance, and bug fixes.',
    "Based on your past orders, we recommend trying our new Cappuccino. We think you'll love it!",
    'Learn about the journey of our coffee beans from farm to cup through our new blog post. Dive into the world of coffee with us.',
  ];

  var time = [
    '1 day ago',
    '2 day ago',
    '3 day ago',
    '3 day ago',
    '4 day ago',
    '4 day ago',
    '4 day ago',
    '5 day ago',
    '5 day ago',
    '5 day ago',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Notifications'),
      ),
      body: ListView(
        children: [
          for (int i = 0; i < notifications.length; i++)
            Padding(
              padding: EdgeInsets.all(8),
              child: ListTile(
                title: Text(
                  '${notifications[i]}',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    '${time[i]}',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                tileColor: Colors.white60,
                onTap: (){},
              ),
            ),
        ],
      ),
    );
  }
}
