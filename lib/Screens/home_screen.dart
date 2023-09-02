import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/calls_screen.dart';
import 'package:whatsapp/Screens/profile_screen.dart';
import 'package:whatsapp/Screens/status_screen.dart';
import 'package:whatsapp/modules/camera_tab.dart';
import 'package:whatsapp/modules/chartlist.dart';


enum _PopItems {
  New_Group,
  Linked_Devices,
  Started_Messages,
  Profile,
  Settings,
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _tabs = <Widget>[

   const Tab(icon: Icon(Icons.camera_alt),),
   const Tab(text: 'Chats',),
   const Tab(text: 'Status',),
   const Tab(text: 'Calls',),
  ];
  
  int currentIndex = 1;

  @override
  Widget build(BuildContext context){
    return DefaultTabController(

      initialIndex: 1,
      length: _tabs.length,
      child: Scaffold(
          appBar: 
          AppBar(
            backgroundColor: const  Color(0xff075e54),
            title:  const Text('WhatsApp',
            style: TextStyle(fontWeight: FontWeight.normal),
            ),
            actions: <Widget>[
              Padding(padding: const EdgeInsets.only(right: 10.0),
               child: IconButton(
                icon: const  Icon(Icons.search),
                onPressed: () {} ,),
                ),
              Padding(padding:const EdgeInsets.only(right: 10.0),
               child: PopupMenuButton<_PopItems>(
                onSelected: (value) {
                  if(value == _PopItems.Profile){
                    Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                  ),
                );
                  }
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                ),
                itemBuilder: (ctx) {
                  return [
                    const PopupMenuItem( 
                      value: _PopItems.New_Group,
                      child: Text('New Group',style: TextStyle(color: Colors.black),),),                    
                    const PopupMenuItem(
                      value: _PopItems.Linked_Devices,
                      child: Text('Linked Devices',style: TextStyle(color: Colors.black)),),
                    const PopupMenuItem(
                      value: _PopItems.Started_Messages,
                      child: Text('Starred Message',style: TextStyle(color: Colors.black)),),
                    const PopupMenuItem(
                      value: _PopItems.Profile,
                      child:  Text('Profile',style: TextStyle(color: Colors.black)),),
                    const PopupMenuItem(
                      value: _PopItems.Settings,
                      child: Text('Settings',style: TextStyle(color: Colors.black)),),
                  ];
                },
                ),
                ),
            ],
            bottom: TabBar(
              onTap: (tabIndex) {
                setState(() {
                  currentIndex = tabIndex;
                });
              },
              tabs: _tabs
              ),
          ),
          body: const TabBarView(
            children: <Widget>[
              CameraTab(),
              ChartList(),
              StatusTab(),
              CallTab(),
            ],
             ),
        ),
    );
  }
}