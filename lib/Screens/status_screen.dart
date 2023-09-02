import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/single_status.dart';

class StatusTab extends StatelessWidget {
  const StatusTab ({super.key});

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
            onPressed: () {},
           child: const Icon(Icons.camera_alt),
            ),
      body: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Row(
                children: [
                  Stack(
                    children:  [
                      CircleAvatar(
                        backgroundColor: Color(0xff128c7e),
                        foregroundColor: Color(0xff128c7e),
                        radius: 30,
                        backgroundImage: AssetImage('lib/assets/my.jpg'),
                      ),
                      Positioned(
                        top: 40 ,
                        left: 40,
                        child: CircleAvatar(
                          radius: 10,
                          child: Icon(Icons.add,size: 20,),
                        ),
                         ),
                    ],
                  ),
                  Expanded(
                    child: ListTile(
                          title: Text('My Status',style: TextStyle(color: Colors.black),),
                          subtitle: Padding(
                          padding: EdgeInsets.only(top: 2.0),
                          child: Text('Tap to add status update'),
                          ),
                        ),
                  ),
                ],
              ),
              //Namaste
              const Divider(),
               const Padding(
                padding: EdgeInsets.only(top: 8,bottom: 8),
                child: Text('Recent updates',
                style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
             const  Row(
                children:[
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 37, 211, 102),
                        radius: 30,
                        child: CircleAvatar(
                          radius: 28,
                          backgroundImage: 
                          NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQr_phTDuXFaJ0AU0bTgplhnPRsfKf2s2YdDGr_DYqgxZY3ZidJ0-uCMjG48EezFOpxS5w&usqp=CAU'),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('Ratan Tata',style: TextStyle(color: Colors.black),),
                      subtitle: Padding(padding: EdgeInsets.only(top: 2,),
                      child: Text('47 mintues ago'),
                      ),
                    )
                  ),
              ],
              ),
              const Divider(),
              //Namaste
              const Padding(
                padding: EdgeInsets.only(top: 8,bottom: 8),
                child: Text('Viewed updates',
                style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
             const  Row(
                children:[
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 30,
                        child: CircleAvatar(
                          radius: 28,
                          backgroundImage: 
                          NetworkImage('https://sportstiger-images.s3.ap-south-1.amazonaws.com/media/ipl-trophy-sportstiger-1685255348061-original.jpg'),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text('MS Dhoni',style: TextStyle(color: Colors.black),),
                      subtitle: Padding(padding: EdgeInsets.only(top: 2,),
                      child: Text('7 mintues ago'),
                      ),
                    )
                  ),
              ],
              ),
              const Divider(),
              Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent) ,
                child: const ExpansionTile(
                  textColor: Colors.black,
                  tilePadding: EdgeInsets.all(0.0),
                  title: Text('Muted updates',
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
                  ),
                  children: [
                    SingleStatusItem(
                      statusImage: 'https://static.langimg.com/thumb/98937508/navbharat-times-98937508.jpg?imgsize=31484&width=540&resizemode=3' ,
                      statusTime: '11:20 am',
                      statusTitle: 'Rahul Gandhi',
                    ),
                    SingleStatusItem(
                      statusImage: 'https://i.pinimg.com/originals/26/2f/c5/262fc58e654222b9bd366c81abbd294e.png' ,
                      statusTime: '12:24 pm',
                      statusTitle: 'Star Lord',
                    ),
                    SingleStatusItem(
                      statusImage: 'https://www.disneyplusinformer.com/wp-content/uploads/2022/08/She-Hulk-Avatar-1.png' ,
                      statusTime: '2 hours ago',
                      statusTitle: 'She-Hulk',
                    ),
                  ],
                  ),
              ),
            ],
          ),
        ),
        ),
    );
  }
}