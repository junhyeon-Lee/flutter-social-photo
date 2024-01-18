import 'dart:convert';

import 'package:get/get.dart';
import 'package:reference_app/util/safe_print.dart';
import 'package:http/http.dart' as http;
import '../../main.dart';

class InstagramImageController extends GetxController {
  String instaUserId = '';

  Future<void> instagramGetUserInfo() async {
    final url = Uri.https('graph.instagram.com', '/me', {
      'fields': 'id,username,media_count, media',
      'access_token': mainService.instagramToken,
    });
    safePrint('요청 url');
    safePrint(url);

    final response = await http.get(url);

    safePrint(response.body);

    final profileInfo = json.decode(response.body);
    safePrint(profileInfo.toString());

    instaUserId = profileInfo.toString().substring(5, 21);
    safePrint('유저 아이디 G${instaUserId}G');
    getInstagramInitImage();
  }

  Future<void> getInstagramInitImage() async {
    final url = Uri.https('graph.instagram.com', '/18029728546838820', {
      'fields': 'id,media_url,media_type,permalink,thumbnail_url',
      'access_token': mainService.instagramToken,
    });
    final response = await http.get(url);
  }
}
