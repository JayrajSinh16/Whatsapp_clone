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
      alignment: Alignment.topLeft,
      nipWidth: 8,
      nipHeight: 24,
      nip: BubbleNip.leftTop,
      color: const Color.fromRGBO(225, 255, 199, 1.0),
      child: const Text('Next Mission, Kab hai ? ', textAlign: TextAlign.right),
    ),
    Bubble(
      margin: const  BubbleEdges.only(top: 10),
      alignment: Alignment.topRight,
      nipWidth: 8,
      nipHeight: 24,
      nip: BubbleNip.rightTop,
      child:const Text('Abhi koi information nahi hai'),
    ),
    Bubble(
      margin: const  BubbleEdges.only(top: 10),
      alignment: Alignment.topRight,
      nipWidth: 8,
      nipHeight: 24,
      nip: BubbleNip.rightTop,
      child:const Text('ShaktiMan se Puchta hu...'),
    ),
    Bubble(
      margin:const  BubbleEdges.only(top: 10),
      alignment: Alignment.topLeft,
      nipWidth: 8,
      nipHeight: 24,
      nip: BubbleNip.leftTop,
      color: const Color.fromRGBO(225, 255, 199, 1.0),
      child:const  Text('thik hai 👍', textAlign: TextAlign.right),
    ),
    Bubble(
      margin:const  BubbleEdges.only(top: 10),
      alignment: Alignment.topRight,
      nipWidth: 8,
      nipHeight: 24,
      nip: BubbleNip.rightTop,
      color: const Color.fromRGBO(225, 255, 199, 1.0),
      child:const  Text('NEXT MISSION', textAlign: TextAlign.right),
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
      child:const  Text('Pe Attack Kar na hai, BE READY!!', textAlign: TextAlign.right),
    ),
    Bubble(
      margin: const BubbleEdges.only(top: 10),
      alignment: Alignment.topLeft,
      nipWidth: 8,
      nipHeight: 24,
      nip: BubbleNip.leftTop,
      child: const  Text('COOL !! '),
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
      child:const  Text('Kal Raat ko 3 baje Attack karna hai', textAlign: TextAlign.right),
    ),
        ],
      ),
    );
  }
}