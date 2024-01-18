import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:reference_app/model/html_format/html_format.dart';
import 'package:reference_app/modules/google/google_image/google_image_controller.dart';
import 'package:reference_app/util/safe_print.dart';

class GoogleHtmlViewer extends StatelessWidget {
  const GoogleHtmlViewer({super.key});

  @override
  Widget build(BuildContext context) {
    HtmlFormat htmlFormat = HtmlFormat();
    return GetBuilder<GoogleImageController>(
        init: GoogleImageController(),
        builder: (controller) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  InAppWebView(
                    initialUrlRequest: URLRequest(
                      url: WebUri(Uri.dataFromString(controller.htmlList[controller.selectedIndex], mimeType: 'text/html').toString()),
                    ),
                    onWebViewCreated: (con) {
                      controller.inAppWebViewController = con;
                    },
                    onLoadStart: (controller, url) async {
                      if (url.toString().startsWith('https://www.instagram.com/')) {
                        safePrint('Redirected to Instagram: $url');
                      }
                    },
                  ),
                  Positioned(
                    bottom: 0,
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () async {
                            controller.imageRotation();
                            await controller.inAppWebViewController.loadUrl(
                                urlRequest: URLRequest(
                              url: WebUri(Uri.dataFromString(controller.htmlList[controller.selectedIndex], mimeType: 'text/html').toString()),
                            ));
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.all(Radius.circular(20))),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () async {
                                if (controller.selectedIndex != 0) {
                                  controller.selectedIndex--;
                                  await controller.inAppWebViewController.loadUrl(
                                      urlRequest: URLRequest(
                                    url: WebUri(Uri.dataFromString(controller.htmlList[controller.selectedIndex], mimeType: 'text/html').toString()),
                                  ));
                                }

                                controller.update();
                              },
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.all(Radius.circular(20))),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 150,
                              height: 50,
                              decoration: const BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.all(Radius.circular(20))),
                              child: Center(child: Text('${controller.selectedIndex + 1}/${controller.selectedPhotoList.length}')),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                              onTap: () async {
                                if (controller.selectedIndex != controller.selectedPhotoList.length - 1) {
                                  controller.selectedIndex++;

                                  await controller.inAppWebViewController.loadUrl(
                                      urlRequest: URLRequest(
                                    url: WebUri(Uri.dataFromString(controller.htmlList[controller.selectedIndex], mimeType: 'text/html').toString()),
                                  ));
                                }
                                controller.update();
                              },
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.all(Radius.circular(20))),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
