import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';

class Message extends StatefulWidget{

 const  Message({super.key});

  @override
  State<Message> createState() => _MessagePage();
}

class _MessagePage extends State<Message> {
  
  @override
  Widget build(BuildContext context){
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(
            height: 4
          ),
          Bubble(
      alignment: Alignment.center,
      color: const  Color.fromRGBO(212, 234, 244, 1.0),
      child: const Text('Yesterday', textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
    ),
    Bubble(
      margin: const BubbleEdges.only(top: 10),
      alignment: Alignment.topRight,
      nipWidth: 8,
      nipHeight: 24,
      nip: BubbleNip.rightTop,
      color: const Color.fromRGBO(225, 255, 199, 1.0),
      child: const Text('Hello, Tony! ', textAlign: TextAlign.right),
    ),
    Bubble(
      margin: const  BubbleEdges.only(top: 10),
      alignment: Alignment.topLeft,
      nipWidth: 8,
      nipHeight: 24,
      nip: BubbleNip.leftTop,
      child:const Text('Hey Bhai!'),
    ),
    Bubble(
      margin: const  BubbleEdges.only(top: 10),
      alignment: Alignment.topLeft,
      nipWidth: 8,
      nipHeight: 24,
      nip: BubbleNip.leftTop,
      child:const Text('Kya hal Chal ? '),
    ),
    Bubble(
      margin:const  BubbleEdges.only(top: 10),
      alignment: Alignment.topRight,
      nipWidth: 8,
      nipHeight: 24,
      nip: BubbleNip.rightTop,
      color: const Color.fromRGBO(225, 255, 199, 1.0),
      child:const  Text('Sab mast!', textAlign: TextAlign.right),
    ),
    Bubble(
      margin:const  BubbleEdges.only(top: 10),
      alignment: Alignment.topRight,
      nipWidth: 8,
      nipHeight: 24,
      showNip: false,
      nip: BubbleNip.rightTop,
      color: const Color.fromRGBO(225, 255, 199, 1.0),
      child:const  Text('Tum batao, Naya Suit ready ho gaya ?', textAlign: TextAlign.right),
    ),
    Bubble(
      margin: const BubbleEdges.only(top: 10),
      alignment: Alignment.topLeft,
      nipWidth: 8,
      nipHeight: 24,
      nip: BubbleNip.leftTop,
      child: const  Text('Ha bhai, finishing baki hai.'),
    ),
    Bubble(
      margin: const BubbleEdges.only(top: 10),
      alignment: Alignment.topLeft,
      nipWidth: 8,
      nipHeight: 24,
      nip: BubbleNip.leftTop,
      showNip: false,
      child: const  Text('Bas'),
    ),
    Bubble(
      margin:const  BubbleEdges.only(top: 10),
      alignment: Alignment.topRight,
      nipWidth: 8,
      nipHeight: 24,
      nip: BubbleNip.rightTop,
      color: const Color.fromRGBO(225, 255, 199, 1.0),
      child:const  Text('Great! ', textAlign: TextAlign.right),
    ),
    Bubble(
      margin:const  BubbleEdges.only(top: 10),
      alignment: Alignment.topRight,
      nipWidth: 8,
      nipHeight: 24,
      nip: BubbleNip.rightTop,
      showNip: false,
      color: const Color.fromRGBO(225, 255, 199, 1.0),
      child:const  Text('Kal Pakistan me located terrorist base', textAlign: TextAlign.right),
    ),
    Bubble(
      margin:const  BubbleEdges.only(top: 10),
      alignment: Alignment.topRight,
      nipWidth: 8,
      nipHeight: 24,
      nip: BubbleNip.rightTop,
      showNip: false,
      color: const Color.fromRGBO(225, 255, 199, 1.0),
      child:const  Text('Pe Attack Kar na hai, Suit ready kar lena bhai', textAlign: TextAlign.right),
    ),
    Bubble(
      margin: const BubbleEdges.only(top: 10),
      alignment: Alignment.topLeft,
      nipWidth: 8,
      nipHeight: 24,
      nip: BubbleNip.leftTop,
      child: const  Text('Thik hai Ready ho jaye ga..'),
    ),
    Bubble(
      margin: const BubbleEdges.only(top: 10),
      alignment: Alignment.center,
      nip: BubbleNip.no,
      color: const Color.fromRGBO(212, 234, 244, 1.0),
      child: const  Text('Today', textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
    ),
    Bubble(
      margin:const  BubbleEdges.only(top: 10),
      alignment: Alignment.topRight,
      nipWidth: 8,
      nipHeight: 24,
      nip: BubbleNip.rightTop,
      color: const Color.fromRGBO(225, 255, 199, 1.0),
      child:const  Text('Hey Tony, Bring your suit', textAlign: TextAlign.right),
    ),
        ],
      ),
    );
  }
}