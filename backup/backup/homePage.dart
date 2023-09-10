import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final List<CameraDescription> cameras;
  const HomePage(this.cameras, {Key key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/images/home.png',
              width: 300,
              height: 300,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled))
                    return Colors.blue;
                  return null; // Defer to the widget's default.
                }),
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled))
                    return Colors.white;
                  return null; // Defer to the widget's default.
                }),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/staticImage');
              },
              child: const Text('Try on static image'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled))
                    return Colors.blue;
                  return null; // Defer to the widget's default.
                }),
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled))
                    return Colors.white;
                  return null; // Defer to the widget's default.
                }),
              ),
              onPressed: () {},
              child: const Text('Start Here'),
            ),
          ],
        )),
      ),
    );
  }
}
