import 'package:flutter/material.dart';
import '../model/chat.dart';

class Chat extends StatefulWidget {
  const Chat({Key key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (context, i) {
          return Column(
            children: [
              Divider(
                height: 20.0,
              ),
              ListTile(
                leading: CircleAvatar(
                  maxRadius: 25,
                  backgroundImage: NetworkImage(messageData[i].imageUrl),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text(
                    messageData[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    messageData[i].time,
                    style: TextStyle(color: Colors.grey),
                  )
                ]),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(messageData[i].message,style: TextStyle(color: Colors.grey),),
                ),
                onTap: (){},
              )
            ],
          );
        });
  }
}
