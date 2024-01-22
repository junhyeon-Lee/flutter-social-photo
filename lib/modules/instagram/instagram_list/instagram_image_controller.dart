import 'dart:convert';

import 'package:get/get.dart';
import 'package:reference_app/util/safe_print.dart';
import 'package:http/http.dart' as http;
import '../../../main.dart';

class InstagramImageController extends GetxController {
  @override
  Future<void> onInit() async {
    await instagramGetUserInfo();

    super.onInit();
  }

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

    instaUserId = profileInfo.toString().substring(5, 21);
    // safePrint('유저 아이디 G${instaUserId}G');
    getInstagramInitImage();
  }

  Future<void> getInstagramInitImage() async {
    // safePrint('이미지 상세정보 요청');
    // final url = Uri.https('graph.instagram.com', '/18029728546838820', {
    //   'fields': 'id,media_url,media_type,permalink,thumbnail_url',
    //   'access_token': mainService.instagramToken,
    // });
    // final response = await http.get(url);
    //
    // safePrint('게시물 상세 정보');
    // safePrint(response.body);

    safePrint('이미지 상세정보 요청');
    safePrint(mainService.instagramToken);
    final url = Uri.https('graph.facebook.com', '/18029728546838820/7380214232030383/insights', {
      //'fields': 'id,media_url,media_type,permalink,thumbnail_url',
      'access_token': 'EAAEtZBNznB7oBOZBhjTfxo1NOx6GcbIA6SWQt3RHBfmnTAZAXbY55ubzsPZArgUZARdJcR5bxlWGt7IVhTiHIZCROHokdwiZCQ68ZCucCD5OMKOQSu91IZCBpglp1lFaMKI3VKhg7fVSOws5ulHprV6jZAp40Bt0BZC0yDr6RXGn4XPttPNhvSyCBxf9yjwAEUZCZCiKX0AMGgrnr7LmkjgGbwaHXI6rSfamvBCT3aQZDZD',
    });
    final response = await http.get(url);

    safePrint('게시물 상세 정보');
    safePrint(response.body);




  }
}
