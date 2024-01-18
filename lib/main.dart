import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:permission_handler/permission_handler.dart';
import 'modules/main_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put<MainService>(MainService(), permanent: true);

  runApp(const MyApp());
}

final mainService = Get.find<MainService>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'reference_app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}


class MainService extends GetxService {

  bool isGoogleSigned = false;
  String googleToken = '';
  String nextPageToken = '';
  GoogleSignInAccount? currentUser;


  bool isInstagramSigned = false;
  String instagramToken = '';


}