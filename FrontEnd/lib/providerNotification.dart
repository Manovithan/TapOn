import 'package:flutter/material.dart';
import 'package:tap_on/Home%20page.dart';
import 'package:tap_on/providerDashboard.dart';

class ProviderNotificationPage extends StatelessWidget {
  const ProviderNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[700],
          title: const Text("Notification Page"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Providerdashboard()));
            },
          ),

        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            NotificationTile(
              title: "Meeting reminder",
              subtitle: "Today at 2:00 PM",
            ),
            NotificationTile(
              title: "Your Service Accepted",
              subtitle: "Track order status",
            ),
            NotificationTile(
              title: "Your Service Added Succesfully",
              subtitle: "Track service status",
            ),
            NotificationTile(
              title: "Up to 50% off",
              subtitle: "Track service status",
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String title;
  final String subtitle;

  const NotificationTile({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.notifications, color: Colors.black),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle),
    );
  }
}
