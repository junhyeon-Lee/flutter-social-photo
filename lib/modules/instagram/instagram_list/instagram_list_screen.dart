import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'instagram_image_controller.dart';

class InstagramListScreen extends StatelessWidget {
  const InstagramListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<InstagramImageController>(
        init: InstagramImageController(),
    builder: (controller) {

          return Scaffold(
            appBar: AppBar(title: const Text('Instagram 포토 리스트'),),



          );

    });




  }
}
