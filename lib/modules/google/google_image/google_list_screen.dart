import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reference_app/modules/google/google_image/google_image_controller.dart';
import 'package:reference_app/modules/google/sleected_images_screen.dart';
import 'package:reference_app/util/safe_print.dart';

class GoogleListScreen extends StatelessWidget {
  const GoogleListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GoogleImageController>(
        init: GoogleImageController(),
        builder: (controller) {
          return Scaffold(
              appBar: AppBar(
                title: const Text('Google 포토 리스트'),
                actions: [
                  if (controller.selectedPhotoIndex.contains(true))
                    IconButton(
                        onPressed: () {
                          safePrint('사진 선택');
                          controller.setSelectedPhoto();
                          Get.to(const SelectedImagesScreen(type: 0,));
                        },
                        icon: const Icon(Icons.arrow_right_rounded, size: 40)),
                ],
              ),
              body: Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: controller.googleImageList.length + 1,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1 / 1,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    // return Text(index.toString());
                    if (index == controller.googleImageList.length) {
                      return Container(
                        decoration: BoxDecoration(color: Colors.green.withOpacity(0.3), borderRadius: const BorderRadius.all(Radius.circular(20))),
                        child: controller.isLoading
                            ? const Center(child: SizedBox(width: 40, child: CircularProgressIndicator()))
                            : IconButton(
                                onPressed: () {
                                  safePrint('추가파싱');
                                  controller.getAdditionalPhoto();
                                },
                                icon: const Icon(Icons.refresh)),
                      );
                    } else {
                      return GestureDetector(
                        onTap: () {
                          controller.selectPhoto(index);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: const Color(0xffF7F6F9)),
                            borderRadius: const BorderRadius.all(Radius.circular(30)),
                          ),
                          width: 120,
                          height: 120,
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                                  child: CachedNetworkImage(
                                    imageUrl: controller.googlePhotoList!.mediaItems![index].baseUrl!,
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) => Container(
                                      color: Colors.green.withOpacity(0.3),
                                    ),
                                    errorWidget: (context, url, error) => const Icon(Icons.error),
                                  ),
                                ),
                              ),
                              if (controller.selectedPhotoIndex[index])
                                Container(
                                  decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(30)), color: Colors.grey.withOpacity(0.5)),
                                  child: const Center(
                                      child: Icon(
                                    Icons.check,
                                    size: 60,
                                  )),
                                )
                            ],
                          ),
                        ),
                      );
                    }
                  },
                ),
              ));
        });
  }
}
