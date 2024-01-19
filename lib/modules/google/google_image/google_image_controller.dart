import 'dart:convert';
import 'dart:developer';

import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:reference_app/main.dart';
import 'package:reference_app/model/google_photo/googlephoto.dart';
import 'package:reference_app/model/google_photo/googlephotolist.dart';
import 'package:reference_app/model/html_format/html_format.dart';
import 'package:reference_app/util/safe_print.dart';
class GoogleImageController extends GetxController {
  @override
  Future<void> onInit() async {
    await getInitPhoto();
    super.onInit();
  }

  
  bool isLoading = false;

  GooglePhotoList? googlePhotoList;
  List<GooglePhoto> googleImageList = [];

  Future<void> getInitPhoto() async {
    isLoading = true;
    update();
    var request = {};
    request['pageSize'] = 10;
    var requestJson = json.encode(request);

    final response = await http.post(
      Uri.parse("https://photoslibrary.googleapis.com/v1/mediaItems:search"),
      body: requestJson,
      headers: await mainService.currentUser!.authHeaders,
    );
    safePrint(response.body);
    var responseAfter = json.decode(response.body);

    GooglePhotoList loginResponse = GooglePhotoList.fromJson(responseAfter);

    mainService.nextPageToken = loginResponse.nextPageToken ?? '';
    googlePhotoList = loginResponse;

    isLoading = false;
    googleImageList = googlePhotoList?.mediaItems ?? [];

    for (int i = 0; i < googleImageList.length; i++) {
      selectedPhotoIndex.add(false);
    }
    update();
  }

  Future<void> getAdditionalPhoto() async {
    if (mainService.nextPageToken != '') {
      isLoading = true;
      update();
      List<GooglePhoto> beforeList = googlePhotoList!.mediaItems ?? [];

      var request = {};
      request['pageSize'] = 10;
      request['pageToken'] = mainService.nextPageToken;
      var requestJson = json.encode(request);

      final response = await http.post(
        Uri.parse("https://photoslibrary.googleapis.com/v1/mediaItems:search"),
        body: requestJson,
        headers: await mainService.currentUser!.authHeaders,
      );

      var responseAfter = json.decode(response.body);

      GooglePhotoList loginResponse = GooglePhotoList.fromJson(responseAfter);

      List<GooglePhoto> nowPhotoList = loginResponse.mediaItems ?? [];

      mainService.nextPageToken = loginResponse.nextPageToken!;

      List<GooglePhoto> tempPhotoList = beforeList + nowPhotoList;

      googlePhotoList = googlePhotoList!.copyWith(mediaItems: tempPhotoList, nextPageToken: loginResponse.nextPageToken);

      isLoading = false;
      googleImageList = googlePhotoList?.mediaItems ?? [];

      for (int i = 0; i < nowPhotoList.length; i++) {
        selectedPhotoIndex.add(false);
      }

      safePrint('인덱스');
      safePrint(selectedPhotoIndex.length);

      update();
    }
  }


  List<bool> selectedPhotoIndex = [];

  selectPhoto(int index) {
    selectedPhotoIndex[index] ? selectedPhotoIndex[index] = false : selectedPhotoIndex[index] = true;
    update();
  }

  List<GooglePhoto> selectedPhotoList = [];

  setSelectedPhoto() async {
    selectedPhotoList = [];
    for (int i = 0; i < selectedPhotoIndex.length; i++) {
      if (selectedPhotoIndex[i]) {
        selectedPhotoList.add(googleImageList[i]);


        log(googleImageList[i].mediaMetadata!.width!);
        log(googleImageList[i].mediaMetadata!.height!);
        log('@@@@@@@@@@@@@@@@@@@@');
        log(googleImageList[i].productUrl!);
        log('@@@@@@@@@@@@@@@@@@@@');
        log(googleImageList[i].baseUrl!);
        log('@@@@@@@@@@@@@@@@@@@@');
        HtmlFormat htmlFormat = HtmlFormat();

        ///이미지 Exif정보 확인
        // String imageData;
        // log(googleImageList[i].baseUrl!);
        // safePrint('@@@@@@@@@@@@@@@@@@@@@@@@');
        // safePrint(googleImageList[i].baseUrl!.replaceAll('googleusercontent.com', 'replace'));
        // var response = await http.get(Uri.parse('${googleImageList[i].baseUrl!}=d'));
        // safePrint('이미지 자체에 get');
        // var documentDirectory = await getTemporaryDirectory();
        // var firstPath = "${documentDirectory.path}";
        // var filePathAndName = '${documentDirectory.path}/${DateTime.now()}.jpg';
        // await Directory(firstPath).create(recursive: true);
        // File file2 = File(filePathAndName);
        // file2.writeAsBytesSync(response.bodyBytes);
        // imageData = filePathAndName;
        // safePrint(imageData);
        // final fileBytes = File(imageData).readAsBytesSync();
        // final data = await readExifFromBytes(fileBytes);
        // log(data.toString());
        // final exif = await Exif.fromPath(imageData);
        // final originalDate = await exif.getOriginalDate();
        // final latLong = await exif.getLatLong();
        // final attribute = await exif.getAttribute("key");
        // final attributes = await exif.getAttributes();
        // safePrint(originalDate);
        // safePrint(originalDate);
        // safePrint(latLong);
        // safePrint(attribute);
        // safePrint(attributes);







        htmlList.add(htmlFormat.htmlFormat1.replaceAll('imageLocation', '${googleImageList[i].baseUrl!}=d').replaceAll('creationAtText', googleImageList[i].mediaMetadata!.creationTime!));
      }
    }
  }

  late InAppWebViewController inAppWebViewController;
  int selectedIndex = 0;
  List<String> htmlList = [];

  imageRotation() {
    if (htmlList[selectedIndex].contains('rotate(90deg)')) {
      htmlList[selectedIndex] = htmlList[selectedIndex].replaceAll('object-fit: cover; transform: rotate(90deg);', 'object-fit: cover; transform: rotate(180deg);');
    } else if (htmlList[selectedIndex].contains('rotate(180deg)')) {
      htmlList[selectedIndex] = htmlList[selectedIndex].replaceAll('object-fit: cover; transform: rotate(180deg);', 'object-fit: cover; transform: rotate(270deg);');
    } else if (htmlList[selectedIndex].contains('rotate(270deg)')) {
      htmlList[selectedIndex] = htmlList[selectedIndex].replaceAll('object-fit: cover; transform: rotate(270deg);', 'object-fit: cover; transform: rotate(360deg);');
    } else if (htmlList[selectedIndex].contains('rotate(360deg)')) {
      htmlList[selectedIndex] = htmlList[selectedIndex].replaceAll('object-fit: cover; transform: rotate(360deg);', 'object-fit: cover;');
    } else {
      htmlList[selectedIndex] = htmlList[selectedIndex].replaceAll('object-fit: cover;', 'object-fit: cover; transform: rotate(90deg);');
    }
  }
}
