import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reference_app/modules/google/google_album/google_album_controller.dart';
import 'package:reference_app/modules/google/sleected_images_screen.dart';

class GoogleAlbumScreen extends StatelessWidget {
  const GoogleAlbumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GoogleAlbumController>(
        init: GoogleAlbumController(),
        builder: (controller) {
          return Stack(
            children: [
              Positioned.fill(
                child: Scaffold(
                    appBar: AppBar(
                      title: const Text('Google 앨범 리스트'),
                    ),
                    body: Padding(
                      padding: const EdgeInsets.all(10),
                      child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: controller.googleAlbumList.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 1 / 1,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () async {
                              await controller.albumDetailData(controller.googleAlbumList[index].id ?? '');
                              Get.to(const SelectedImagesScreen(type: 1,));
                            },
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1, color: const Color(0xffF7F6F9)),
                                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                                    ),
                                    width: 120,
                                    height: 120,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                                      child: CachedNetworkImage(
                                        imageUrl: controller.googleAlbumList[index].coverPhotoBaseUrl!, //.mediaItems![index].baseUrl!,
                                        fit: BoxFit.cover,
                                        placeholder: (context, url) => Container(
                                          color: Colors.green.withOpacity(0.3),
                                        ),
                                        errorWidget: (context, url, error) => const Icon(Icons.error),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(30)), color: Colors.black.withOpacity(0.3)),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          controller.googleAlbumList[index].title ?? '이름 없음',
                                          style: const TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          controller.googleAlbumList[index].mediaItemsCount!,
                                          style: const TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    )),
              ),
              if (controller.isLoading)
                Container(
                  width: Get.width,
                  height: Get.height,
                  color: Colors.black.withOpacity(0.5),
                  child: const Center(child: SizedBox(width: 80, height: 80, child: CircularProgressIndicator())),
                )
            ],
          );
        });
  }
}
