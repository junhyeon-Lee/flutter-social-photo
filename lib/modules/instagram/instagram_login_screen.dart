import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:reference_app/main.dart';
import 'package:reference_app/modules/main_controller.dart';
import 'package:reference_app/util/safe_print.dart';

class InstagramLoginScreen extends StatelessWidget {
  const InstagramLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    InAppWebViewController? webView;
    return GetBuilder<MainController>(
        init: MainController(),
        builder: (mainController) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('인스타 로그인'),
            ),
            body: Container(
              width: Get.width,
              height: Get.height,
              color: Colors.blue,
              child: InAppWebView(
                initialUrlRequest: URLRequest(
                  url: WebUri('https://api.instagram.com/oauth/authorize?client_id=580002062693465&redirect_uri=https://google.com&scope=user_profile,user_media&response_type=code'),
                ),
                onWebViewCreated: (controller) {
                  webView = controller;
                },
                onLoadStart: (controller, url) async {
                  safePrint('@@@@@@@@@@@@@@@@@@@@@@@@@');
                  safePrint(url);
                  if (url.toString().startsWith('https://www.instagram.com/')) {
                    safePrint('뭔디');
                    if (webView != null) {
                      await webView!.goBack();
                    }
                  }

                  if (url.toString().startsWith('https://www.google.com/')) {
                    Get.back();
                    mainService.instagramToken = url.toString().replaceAll('https://www.google.com/?code=', '');
                    safePrint('인스타 토큰 : ${mainService.instagramToken}');
                    await mainController.getInstagramToken();
                  }
                },
              ),
            ),
          );
        });
  }
}
