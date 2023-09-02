import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/camera_screen.dart';
import 'package:whatsapp/Screens/home_screen.dart';

Future<void> main() async {
 WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();

  runApp(
    const MyApp(), 
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      debugShowCheckedModeBanner: false,      
      title: 'Ironman',
      theme:  ThemeData(
        floatingActionButtonTheme:const FloatingActionButtonThemeData(backgroundColor: Color(0xff128c7e),),
        primaryColor: const  Color(0xff075e54),
        indicatorColor: Colors.white,
        primaryColorDark: const Color(0xff128c7e),
        primaryIconTheme:const IconThemeData(color: Colors.white),
        textTheme: const TextTheme( 
          titleLarge: TextStyle(color: Colors.white),
          titleMedium: TextStyle(color: Colors.white),
          titleSmall: TextStyle(color: Colors.white),
        ),
      ),
      home:  const HomeScreen(),        
    );
  }
}