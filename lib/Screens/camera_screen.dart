import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras= List<CameraDescription>.empty(growable: true);

class CameraScreen extends StatefulWidget{
  const CameraScreen({super.key});

  @override
  _CameraScreenState createState() => _CameraScreenState();
}



class _CameraScreenState extends State<CameraScreen> {

 late CameraController _cameraController;
 late Future<void>  cameraValue;

  @override
  void initState(){
    super.initState();
    _cameraController = CameraController(cameras[0], ResolutionPreset.high);
    cameraValue = _cameraController.initialize();
  }

  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder(
            future:  cameraValue,
            builder: (context, snapshot) {
              if(snapshot.connectionState == ConnectionState.done){
                return CameraPreview(_cameraController);
              }
              else{
                return const Center(
                  child: CircularProgressIndicator(color: Colors.teal,),
                );
              }
            },
          ),
          Positioned(
            bottom: 0.0,
            child: Container(
              padding: const EdgeInsets.only(top: 5,bottom: 5),
              color: Colors.black,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: 90,
                    child: ListView.builder(
                      padding:const EdgeInsets.symmetric(vertical: 10),
                      scrollDirection: Axis.horizontal,
                      itemBuilder:  (context, index) {
                        return Container(
                          padding: const EdgeInsets.only(right: 5),
                          width: 70,
                          height: 70,
                          child:const Image(image: NetworkImage('https://media-cldnry.s-nbcnews.com/image/upload/t_fit-760w,f_auto,q_auto:best/MSNBC/Components/Photo/_new/100506-ironman2-hmed.jpg'),
                          fit: BoxFit.cover,
                          ),
                        );
                      } ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.flash_off,color: Colors.white,size: 28,),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(Icons.panorama_fish_eye,color: Colors.white,size: 70,),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.flip_camera_ios,color: Colors.white,size: 28,),
                      ),
                  ],),
                  const SizedBox(height: 4),
                  const Text('Tap for Photo, Hold for Video',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                ]),
            ),
          )
        ],
      ),
    );
  }
}