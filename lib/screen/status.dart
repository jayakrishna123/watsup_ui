import 'package:flutter/material.dart';
import 'package:watsupui/resuable/wcards.dart';
import '../model/chat.dart';
class Status extends StatefulWidget {
  const Status({ Key key }) : super(key: key);

  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Wcards("MyStatus","https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500","tap add status"),
         Divider(height: 5,),
         Heading("Recent"),
         Wcards(messageData[1].name, messageData[1].imageUrl, messageData[1].time),
         Wcards(messageData[2].name, messageData[2].imageUrl, messageData[2].time),
         Wcards(messageData[3].name, messageData[3].imageUrl, messageData[3].time),
         Divider(height: 5,),
         Heading("today"),
         Wcards(messageData[2].name, messageData[2].imageUrl, messageData[2].time),
         Wcards(messageData[3].name, messageData[3].imageUrl, messageData[3].time),
      ],
    
    );
  }
}
class Heading extends StatelessWidget {
  final String heading;
  Heading(this.heading);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 5,top: 5),
        child:Text(heading,style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),) ,),
      
    );
  }
}