import 'package:flutter/material.dart';

class SingleChatWidget extends StatelessWidget{
  const SingleChatWidget({
    super.key,
    required this.chatMessage,
    required this.chatTitle,
    required this.time,
    required this.imageURL,
    required this.seenStatusColor,    
    });

  final String? chatMessage;
  final String? chatTitle;
  final String? time;
  final Color? seenStatusColor;
  final String? imageURL;

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(imageURL!),
        ),
        Expanded(
          child: ListTile(
            title: Text('$chatTitle',
            style: const  TextStyle(fontWeight: FontWeight.w600,color: Colors.black),
            ),
            subtitle: Row(
              children: [
                Icon(
                  seenStatusColor == Colors.blue ? Icons.done_all : Icons.done,
                  size: 15,
                  color: seenStatusColor,
                ),
                Expanded(
                  child:Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child:  Text('$chatMessage',
                    style: const TextStyle(overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
              ],
            ),
            trailing: Column(
              children: [
                Padding(padding: const  EdgeInsets.only(top: 8.0),
                child: Text('$time')
                ),
              ],
              ),
          ), ),
      ],
    );
  }
}