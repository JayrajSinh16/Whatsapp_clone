import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class ProfileScreen extends StatelessWidget{
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: const  Color(0xff075e54),
        title:  const Text('Profile',
        style: TextStyle(fontWeight: FontWeight.normal),
            ),
      ),
      body: const  ListTileTheme(
        minVerticalPadding: 15,
        child: SingleChildScrollView(
          child: Column(
            children: [
               SizedBox(height: 40,),
              Hero(
                tag: 'user-profile-dp',
                child: Center(
                  child: Stack(
                    children: [
                       ProfilePicture(
                      name: 'Jayraj 😎',
                      role: 'ADMIN',
                      radius: 90,
                      fontsize: 51,
                      tooltip: true,
                      img: 'https://img.freepik.com/premium-photo/digital-art-selected_784625-9639.jpg',
                    ),
                    Positioned(
                        top: 130,
                        left: 120,
                        child: CircleAvatar(
                          radius: 25,
                          child: Icon(Icons.camera_alt,size: 25,),
                        ),
                         ),
                    ],
                  ),
                ),
                ),
                 SizedBox(height: 20,),
                ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Icon(Icons.person_rounded),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Name',style: TextStyle(color: Color.fromARGB(174, 0, 0, 0),fontSize: 15),),
                              SizedBox(height: 3,),
                              Text('Jayraj 😎',style: TextStyle(color: Colors.black,fontSize: 18),),
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.edit,color:  Color(0xff075e54),),
                        ],
                      ),
                       SizedBox(height: 8),
                      Text(
                        'This is not your username or pin. '
                        'This name will be visible to your WhatsApp contacts.',
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ],
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.info_outline),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('About',style: TextStyle(color: Color.fromARGB(174, 0, 0, 0),fontSize: 15),),
                      SizedBox(height: 3,),
                      Text('No caption Needed',style: TextStyle(color: Colors.black,fontSize: 18),),
                    ],
                  ),
                  trailing: Icon(Icons.edit,color:  Color(0xff075e54),),
                ),
                Divider(),
                ListTile(
                  leading:  Icon(Icons.call),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Phone',style: TextStyle(color: Color.fromARGB(174, 0, 0, 0),fontSize: 15),),
                      SizedBox(height: 3),
                      Text('100',style: TextStyle(color: Colors.black,fontSize: 18),),
                    ],
                  ),
                ),
            ],
          ) ),
        ) ,
    );
  }
}