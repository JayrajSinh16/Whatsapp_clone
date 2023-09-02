import 'package:flutter/material.dart';

class SingleStatusItem extends StatelessWidget{

  const SingleStatusItem({
    super.key,
    required this.statusImage,
    required this.statusTime,
    required this.statusTitle
  });

  final String? statusTitle;
  final String? statusTime;
  final String? statusImage;

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 37, 211, 102),
              radius: 30,
              child: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage('$statusImage'),
              ),
            )
          ],
        ),
        Expanded(
          child: ListTile(
            title: Text('$statusTitle'),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Text('$statusTime')
            ),
          ),
        ),
    ],
    );
  }
}