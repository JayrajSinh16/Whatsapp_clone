import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/single_call.dart';

class CallTab extends StatelessWidget {
  const CallTab({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton: FloatingActionButton(
            onPressed: () {},
           child: const Icon(Icons.add_call),
            ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView(
          children:const [
            SingleCallTab(
              callStatus: 'Outgoing',
              callType: 'Audio',
              chatMessage: 'Today 12:28 PM',
              chatTitle: 'Captain America',
              imageURL: 'https://avatarfiles.alphacoders.com/167/167457.jpg',
              ),
              SingleCallTab(
              callStatus: 'Incoming',
              callType: 'Audio',
              chatMessage: 'Today 10:43 PM',
              chatTitle: 'Virat Kohli',
              imageURL: 'https://i0.wp.com/cricketaddictor.com/wp-content/uploads/2021/04/Virat-Kohli-11.jpg?fit=640%2C400&ssl=1',
              ),
              SingleCallTab(
              callStatus: 'Incoming',
              callType: 'Video',
              chatMessage: 'Yesterday 11:58 AM',
              chatTitle: 'Ant-Man',
              imageURL: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGdY_sV7hPmpfJPGYb1t1kRBFITpTGx9dF4d2qurMhZtLqRnMUyWG1s6cAECOT9uVk13U&usqp=CAU',
              ),
              SingleCallTab(
              callStatus: 'Outgoing',
              callType: 'Audio',
              chatMessage: 'Today 12:28 AM',
              chatTitle: 'Gautam Adani',
              imageURL: 'https://bsmedia.business-standard.com/_media/bs/img/article/2021-09/22/full/1632254947-8566.jpg',
              ),
          ],
        ),
        ),
    );
  }

}