import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/chat_screen_1.dart';
import 'package:whatsapp/Screens/chat_screen_2.dart';
import 'package:whatsapp/widgets/single_chat.dart';

class ChartList extends StatelessWidget {
  const ChartList({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton: FloatingActionButton(
            onPressed: () {},
           child: const Icon(Icons.chat_rounded),
            ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children:  [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const ChartScreen(),
                  ),
                );
              },
              child:const SingleChatWidget(
                chatTitle: 'Tony Stark',
                chatMessage: 'Hey Tony, bring your Suite',
                time: '4:18 pm',
                imageURL: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/1816dd7f-ec3a-43fd-92c8-22f08f134f99/dek7f4u-00f9b4cb-1fa1-45c1-a6b7-892097c52680.png/v1/fill/w_1024,h_576/iron_man_tony_stark_by_syren007_dek7f4u-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NTc2IiwicGF0aCI6IlwvZlwvMTgxNmRkN2YtZWMzYS00M2ZkLTkyYzgtMjJmMDhmMTM0Zjk5XC9kZWs3ZjR1LTAwZjliNGNiLTFmYTEtNDVjMS1hNmI3LTg5MjA5N2M1MjY4MC5wbmciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.9VZLgxe03V25arO6ISsBQafUBUu1ZI7IJK7u4cS7fVQ',
                seenStatusColor: Colors.blue,
              ),
            ),
             InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const ChartScreenPart(),
                  ),
                );
              },
               child: const SingleChatWidget(
                chatTitle: 'Spider-man',
                chatMessage: 'Kal Raat ko 3 baje Attack karna hai',
                time: '3:18 pm',
                imageURL: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3iSk5w-pfhBO7eDowS6UduLZ_iuzhcfCReg&usqp=CAU',
                seenStatusColor: Color.fromARGB(151, 57, 55, 55),
                         ),
             ),
           const  SingleChatWidget(
              chatTitle: 'ShaktiMan',
              chatMessage: 'Assignment Done!',
              time: '3:18 am',
              imageURL: 'https://i.ytimg.com/vi/OgrZ2ofIcT8/maxresdefault.jpg',
              seenStatusColor: Color.fromARGB(151, 57, 55, 55),
            ),
           const  SingleChatWidget(
              chatTitle: 'Hulk',
              chatMessage: '3 Gamma Bombs required',
              time: '2:46 pm',
              imageURL: 'https://images.alphacoders.com/980/thumb-350-980574.jpg',
              seenStatusColor: Color.fromARGB(151, 57, 55, 55),
            ),
           const SingleChatWidget(
              chatTitle: 'Mukesh Ambani',
              chatMessage: 'Transaction completed',
              time: '12:45 pm',
              imageURL: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLjgtQBtTKZGX7xd27h7bBNhrQSkiwBt_Act7Lx-NKQysueERpM3VQzECpkKTPf4TUUiY&usqp=CAU',
              seenStatusColor: Colors.blue,
            ),
            const SingleChatWidget(
              chatTitle: 'Narendra Modi',
              chatMessage: 'Kal Pakistan pe attack karna hai',
              time: '7:54 am',
              imageURL: 'https://files.artrapid.com/wp-content/uploads/2019/05/30105322/1-3.jpg',
              seenStatusColor: Color.fromARGB(151, 57, 55, 55),
            ),
            const SingleChatWidget(
              chatTitle: 'Thor',
              chatMessage: 'Hey Jayraj',
              time: '5:30 am',
              imageURL: 'https://helios-i.mashable.com/imagery/articles/03ggWbQE8v1jbRxAg2koUR6/hero-image.fill.size_1200x900.v1623364596.jpg',
              seenStatusColor: Color.fromARGB(255, 243, 243, 243),
            ),
            const SingleChatWidget(
              chatTitle: 'James Bond',
              chatMessage: 'Suspect found',
              time: '10:38 am',
              imageURL: 'https://i.pinimg.com/736x/32/e8/b4/32e8b45695d8162ec60a32664b3956f5--silhouette-arte--birthday.jpg',
              seenStatusColor: Color.fromARGB(151, 57, 55, 55),
            ),
            const SingleChatWidget(
              chatTitle: 'Nick Fury',
              chatMessage: 'Aur Kya Hal Chal ?',
              time: '1:18 am',
              imageURL: 'https://cdn.dribbble.com/users/1634115/screenshots/6250700/nickfury.png',
              seenStatusColor: Color.fromARGB(151, 57, 55, 55),
            ),
            const SingleChatWidget(
              chatTitle: 'HawkEye',
              chatMessage: 'Hey Tony, bring your Suite',
              time: '4:18 pm',
              imageURL: 'https://www.nicepng.com/png/detail/64-646820_image-hawkeye-aou-avatar-png-marvel-cinematic-universe.png',
              seenStatusColor: Colors.blue,
            ),
            const SingleChatWidget(
              chatTitle: 'Black Panther',
              chatMessage: 'Hey Tony, bring your Suite',
              time: '4:18 pm',
              imageURL: 'https://cdn.dribbble.com/users/2192291/screenshots/4508722/media/ba6049b63926521df58a0e3b4f4b4f81.png?compress=1&resize=400x300&vertical=top',
              seenStatusColor: Colors.blue,
            ),
          ],
        ),
         ),
    );
  }
}