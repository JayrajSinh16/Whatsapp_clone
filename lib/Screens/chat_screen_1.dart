import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/modules/message_list_1.dart';

class ChartScreen extends StatefulWidget{
  const ChartScreen({super.key});

  @override
  State<ChartScreen> createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {

  bool show= false;
  FocusNode focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();


  @override
  void initState(){
    super.initState();
    focusNode.addListener(() {
      if(focusNode.hasFocus){
        setState(() {
          show = false;
        });
      }
    });
  }

  Widget emojoselect() {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.35,
      child: EmojiPicker(
        config: const Config(
          columns: 7,
          emojiSizeMax: 32,
        ),
        onEmojiSelected: (category, emoji) {
          setState(() {
            _controller.text = _controller.text + emoji.emoji;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://cdn.wallpapersafari.com/54/0/HluF7g.jpg'),
        fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: AppBar(
            backgroundColor: const  Color(0xff075e54),
            leadingWidth: 70,
            titleSpacing: 0,
            leading: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back,size: 24,),
                  ),
                const CircleAvatar(
                  radius: 23,
                  backgroundImage:  NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/1816dd7f-ec3a-43fd-92c8-22f08f134f99/dek7f4u-00f9b4cb-1fa1-45c1-a6b7-892097c52680.png/v1/fill/w_1024,h_576/iron_man_tony_stark_by_syren007_dek7f4u-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NTc2IiwicGF0aCI6IlwvZlwvMTgxNmRkN2YtZWMzYS00M2ZkLTkyYzgtMjJmMDhmMTM0Zjk5XC9kZWs3ZjR1LTAwZjliNGNiLTFmYTEtNDVjMS1hNmI3LTg5MjA5N2M1MjY4MC5wbmciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.9VZLgxe03V25arO6ISsBQafUBUu1ZI7IJK7u4cS7fVQ'),
                ),
              ]
              ),
              title:Container(
                margin: const EdgeInsets.all(6),
                child: InkWell(
                  onTap: () {},
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text('Tony Stark',style: TextStyle(fontSize: 18.5,fontWeight: FontWeight.normal),),
                       Text('last seen today at 3:54 PM',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w300),),
                    ],),
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const  Icon(Icons.videocam),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const  Icon(Icons.call),
                ),
                PopupMenuButton(
                  itemBuilder: (ctx) {
                      return [
                        const PopupMenuItem(child: Text('View contact',style: TextStyle(color: Colors.black),),),
                        const PopupMenuItem(child: Text('Media,link and Docs',style: TextStyle(color: Colors.black)),),
                        const PopupMenuItem(child: Text('Search',style: TextStyle(color: Colors.black)),),
                        const PopupMenuItem(child: Text('Mute Notification',style: TextStyle(color: Colors.black)),),
                        const PopupMenuItem(child: Text('Wallpaper',style: TextStyle(color: Colors.black)),),
                        const PopupMenuItem(child: Text('More',style: TextStyle(color: Colors.black)),),
                      ];
                    },
                ),
              ]
          ),
        ),
        body: Stack(
          children: [
            const Message(),
            const SizedBox(height: 8,),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: WillPopScope(
                child: Stack(
                  children: [
                    ListView(),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width-60,
                                child: Card(
                                  margin: const EdgeInsets.only(left: 2,right: 2,bottom: 8.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    ),
                                  child: TextFormField(
                                    controller: _controller ,
                                    focusNode: focusNode,
                                    textCapitalization: TextCapitalization.sentences,
                                    style: const TextStyle(color: Colors.black),
                                    textAlignVertical: TextAlignVertical.center,
                                    keyboardType: TextInputType.multiline,
                                    maxLines: 5,
                                    minLines: 1,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    hintText: "Type a message",
                                    contentPadding:const EdgeInsets.all(5),
                                    prefixIcon: IconButton(
                                      onPressed: () {
                                        if(!show){
                                        focusNode.unfocus();
                                        focusNode.canRequestFocus = false;
                                        setState(() {
                                          show = !show;
                                        });
                                        };
                                      },
                                      icon: const Icon(Icons.emoji_emotions_outlined),
                                      ),
    
                                    suffixIcon: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.attach_file),
                                          ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.camera_alt),
                                          ),
                                      ],
                                    )  
                                    ),
                                  ),
                                  ),
                              ),
                              Padding(
                               padding: const EdgeInsets.only(bottom: 8,left: 2,right: 5),
                               child:  CircleAvatar(
                                backgroundColor: const Color(0xff128c7e),
                                radius: 25,
                                child: IconButton(
                                  onPressed: (){},
                                  icon: const Icon(Icons.mic,color: Colors.white,),
                                  ),
                               ),
                             ),
                            ],
                          ),
                          show ? emojoselect() : Container(),
                        ],
                      ),
                    )
                  ]
                ),
                onWillPop:() {
                  if(show){
                    setState(() {
                      show = false;
                    });
                  }
                  else{
                    Navigator.pop(context);
                  }
                  return Future.value(false);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}