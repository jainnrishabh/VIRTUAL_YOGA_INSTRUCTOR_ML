// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// import 'package:page_transition/page_transition.dart';
// import 'package:yoga/static%20image/static.dart';
// import 'homePage.dart';

// List<CameraDescription> cameras = [];

// Future<void> main() async {
//   // initialize the cameras when the app starts
//   WidgetsFlutterBinding.ensureInitialized();
//   cameras = await availableCameras();
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Team Enigma',
//         onGenerateRoute: (settings) {
//           switch (settings.name) {
//             case '/staticImage':
//               return PageTransition(
//                   child: StaticImage(), type: PageTransitionType.scale);
//               break;
//             default:
//               return null;
//           }
//         },
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: StaticImage());
//   }
// }
