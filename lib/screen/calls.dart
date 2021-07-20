import 'package:flutter/material.dart';
import 'package:watsupui/model/calls.dart';

class Calls extends StatefulWidget {
  const Calls({ Key key }) : super(key: key);

  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callData.length,
      itemBuilder:(context, i){
        return Column(
          children: [
            Divider( height: 20.0,),
            ListTile(
              leading: CircleAvatar(
                maxRadius: 25,
                backgroundImage: NetworkImage(callData[i].imageUrl),
                
              ),
              title: Text(callData[i].name,style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Container(
                padding: EdgeInsets.only(top: 5),
                child: Text(callData[i].time,style: TextStyle(color: Colors.grey,fontSize: 14),),
              ),
              trailing: Icon(Icons.phone),
              selected: true,
            )

          ],

        );
      } );
  }
}