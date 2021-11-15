import 'package:flutter/material.dart';
import 'package:security_setting/live_classes.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

Widget card(BuildContext context)
{
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      elevation: 5,
      child: Container(
        height: MediaQuery.of(context).size.height *.17,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              child: Text("WSFx 100",style: TextStyle(fontSize:17,fontWeight: FontWeight.bold),),
            ),
            const Divider(
              thickness: 1,
              height: 0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 13),
                  child: Text("Lorem Ipsum is simply dummy of text of the printing and typesetting industry.",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 1),
                  child: Text("EXPIRY ON: 31st DEC 2021",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}


class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back,size: 20,),
          onTap: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LiveClasses(),),);
          },
        ),
        title: const Text("Notifications",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            card(context),
          ],
        ),
        ),
    );
  }
}
