import 'package:flutter/material.dart';
import 'package:security_setting/notification_screen.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  _FAQScreenState createState() => _FAQScreenState();
}

Widget card(BuildContext context, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.black,
        ),
        height: MediaQuery.of(context).size.height * .06,
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),
        )),
      ),
    ),
  );
}

class _FAQScreenState extends State<FAQScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, size: 20),
          onPressed: () {},
        ),
        title: const Text(
          "FAQ",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => const NotificationScreen(),),);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            card(context, "General"),
            card(context, "Remittance"),
            card(context, "Smart Currency Card"),
            card(context, "Foreign Currency"),
            card(context, "Video KYC"),
            card(context, "TCS"),
          ],
        ),
      )),
    );
  }
}
