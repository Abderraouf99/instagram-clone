import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/app_page_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final List<CameraDescription> cameras = await availableCameras();
  runApp(
    MyApp(
      cameras: cameras,
    ),
  );
}

class MyApp extends StatelessWidget {
  final List<CameraDescription> cameras;
  const MyApp({Key? key, required this.cameras}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData(),
      home: AppPageView(
        cameras: cameras,
      ),
    );
  }
}
