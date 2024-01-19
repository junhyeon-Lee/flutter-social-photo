import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reference_app/main.dart';
import 'package:reference_app/modules/google/google_album/google_album_Screen.dart';
import 'package:reference_app/modules/google/google_image/google_list_screen.dart';
import 'package:reference_app/util/safe_print.dart';

import 'instagram/instagram_list/instagram_list_screen.dart';
import 'instagram/instagram_login_screen.dart';
import 'main_controller.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
        init: MainController(),
        builder: (mainController) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("flutter reference app"),
            ),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            safePrint('sign with google');
                            await mainController.loginWithGoogle();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: mainService.currentUser == null ? Colors.yellow.withOpacity(0.9) : Colors.yellow.withOpacity(0.3), borderRadius: const BorderRadius.all(Radius.circular(20))),
                            width: 150,
                            height: 80,
                            child: Center(
                              child: Text(mainService.currentUser == null ? '구글 로그인 하기' : '구글 로그인 됨'),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (mainService.currentUser == null) {
                            } else {
                              Get.to(const GoogleListScreen());
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: mainService.currentUser == null ? Colors.yellow.withOpacity(0.3) : Colors.yellow.withOpacity(0.9), borderRadius: const BorderRadius.all(Radius.circular(20))),
                            width: 90,
                            height: 80,
                            child: const Center(
                              child: Text('이미지 리스트'),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (mainService.currentUser == null) {
                            } else {
                              Get.to(const GoogleAlbumScreen());
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: mainService.currentUser == null ? Colors.yellow.withOpacity(0.3) : Colors.yellow.withOpacity(0.9), borderRadius: const BorderRadius.all(Radius.circular(20))),
                            width: 90,
                            height: 80,
                            child: const Center(
                              child: Text('앨범 리스트'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () async {

                            safePrint('sign with instagram');
                            Get.to(const InstagramLoginScreen());
                          },
                          child: Container(
                            decoration: BoxDecoration(color:mainService.instagramToken==''?Colors.orange.withOpacity(0.9):Colors.orange.withOpacity(0.3), borderRadius: const BorderRadius.all(Radius.circular(20))),
                            width: 200,
                            height: 80,
                            child: Center(
                              child: Text(mainService.instagramToken==''?'인스타 로그인 하기':'인스타 로그인 됨'),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if(mainService.instagramToken==''){

                            }else{
                              Get.to(const InstagramListScreen());
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: mainService.instagramToken==''?Colors.orange.withOpacity(0.3):Colors.orange.withOpacity(0.9), borderRadius: const BorderRadius.all(Radius.circular(20))),
                            width: 120,
                            height: 80,
                            child: const Center(
                              child: Text('이미지 리스트'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 150,
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
