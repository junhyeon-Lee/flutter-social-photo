import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:reference_app/main.dart';
import 'package:reference_app/util/safe_print.dart';

class MainController extends GetxController {
  //sign with google
  Future<void> loginWithGoogle() async {
    await GoogleSignIn().signOut();

    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    mainService.currentUser = googleUser;
    update();

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
  }

  Future<void> getInstagramToken() async {
    var response = await http.post(Uri.parse('https://api.instagram.com/oauth/access_token'), body: {
      'client_id': '580002062693465',
      'client_secret': '219ba63d8ad9b97423a6a2135b292889',
      'grant_type': 'authorization_code',
      'redirect_uri': 'https://google.com/',
      'code': mainService.instagramToken,
    });



    if (response.statusCode == 200) {
      safePrint('성공');
      Map<String, dynamic> responseData = json.decode(response.body);
      String accessToken = responseData['access_token'];
      mainService.instagramToken = accessToken;
      safePrint('엑세스 토큰');
      safePrint(mainService.instagramToken);
      update();
    }else{
      safePrint('실패');
      safePrint(mainService.instagramToken);
      safePrint(response.request);
      safePrint(response.body);
      safePrint(response.statusCode);
    }
  }
}
