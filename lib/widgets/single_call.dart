import 'package:flutter/material.dart';

class SingleCallTab extends StatelessWidget{
  const SingleCallTab({
    super.key,
    required this.callStatus,
    required this.callType,
    required this.chatMessage,
    required this.chatTitle,
    required this.imageURL,
    });

    final String? chatMessage;
    final String? chatTitle;
    final String? callStatus;
    final String? callType;
    final String? imageURL;

    @override
    Widget build(BuildContext context){
      return Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage('$imageURL'),
          ),
          Expanded(
            child: ListTile(
              title: Text('$chatTitle',
               style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
              subtitle: Row(
                children: [
                  Icon(
                    callStatus == 'Incoming' ? (Icons.call_received_sharp) : (Icons.call_made_sharp),
                    size: 15,
                    color:  (callStatus== 'Incoming') ? Colors.teal : Colors.red,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Text('$chatMessage',
                      style: const TextStyle(overflow: TextOverflow.ellipsis),),
                      ),
                    ),
                ],
              ),
              trailing: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Icon(callType == 'Audio' ? Icons.call : Icons.videocam,color: Colors.teal,)
                    ),
                ],
              ), 
            )
            ),
      ],
      );
    }
}