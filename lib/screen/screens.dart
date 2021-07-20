import 'package:flutter/material.dart';

import 'calls.dart';
import 'chat.dart';
import 'status.dart';
import 'camera.dart';
 

 class Screens extends StatefulWidget {
   const Screens({ Key key }) : super(key: key);
 
   @override
   _ScreensState createState() => _ScreensState();
 }
 
 class _ScreensState extends State<Screens>with SingleTickerProviderStateMixin {
   TabController _tabController;
   @override
   void initState() {
       // TODO: implement initState
       super.initState();
       _tabController=TabController(initialIndex: 1,length: 4,
       vsync: this);
     }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text("Watsup",style: TextStyle(color: Colors.white),
       ),actions: [
         IconButton(icon: Icon(Icons.search), onPressed: (){
           
         }),
          IconButton(icon: Icon(Icons.more_vert), onPressed: (){
           
         })
       ],
       bottom: TabBar(
         controller: _tabController,
         tabs: <Widget>[
         Tab(icon: Icon(Icons.camera_alt,color: Colors.white,)),
         Tab(child: Text("CHAT",style: Theme.of(context).textTheme.button,),),
         Tab(child: Text("STATUS",style: Theme.of(context).textTheme.button,),),
         Tab(child: Text("CAllS",style: Theme.of(context).textTheme.button,),),
       ]),
       ),
       body: TabBarView(
         controller: _tabController,
         children: [
           Camera(),
           Chat(),
           Status(),
           Calls(),

       ],),
       floatingActionButton: FloatingActionButton(backgroundColor: Theme.of(context).accentColor,
       child: Icon(Icons.message,color: Colors.white,),onPressed:(){
         
       } ,),
       
       
     );
   }
 }