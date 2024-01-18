import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reference_app/modules/google/google_album/google_album_controller.dart';
import 'package:reference_app/modules/google/google_image/google_html_viewer.dart';

import 'google_album/google_album_html_viewer.dart';
import 'google_image/google_image_controller.dart';

class SelectedImagesScreen extends StatelessWidget {

  final int type; ///0=image, 1=album

  const SelectedImagesScreen({super.key, required this.type});

  @override
  Widget build(BuildContext context) {

    final imageController = Get.put(GoogleImageController());
    final albumController = Get.put(GoogleAlbumController());

    return Scaffold(
        appBar: AppBar(
          title: const Text('선택된 사진들'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),


          child: GridView.builder(
            shrinkWrap: true,
            itemCount: type==0?imageController.selectedPhotoList.length:albumController.albumData!.mediaItems!.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1 / 1,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (BuildContext context, int index) {
              // return Text(index.toString());

              return GestureDetector(
                onTap: () {
                  type==0?imageController.selectedIndex = 0:albumController.selectedIndex = 0;
                  if(type==0){
                    Get.to(const GoogleHtmlViewer());
                  }else{
                    Get.to(const GoogleAlbumHtmlViewer());
                  }


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
                            imageUrl: type==0?imageController.selectedPhotoList[index].baseUrl!: albumController.albumData!.mediaItems![index].baseUrl!,
                            fit: BoxFit.cover,
                            placeholder: (context, url) => Container(
                              color: Colors.green.withOpacity(0.3),
                            ),
                            errorWidget: (context, url, error) => const Icon(Icons.error),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),



        ));
  }
}
