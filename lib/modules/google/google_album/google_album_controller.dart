import 'dart:convert';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:reference_app/model/google_album/googlealbum.dart';
import 'package:reference_app/model/google_album/googlealbumlist.dart';
import 'package:reference_app/model/google_photo/googlephotolist.dart';
import 'package:reference_app/model/html_format/html_format.dart';
import '../../../main.dart';
import '../../../util/safe_print.dart';

class GoogleAlbumController extends GetxController{
  @override
  Future<void> onInit() async {
    await getInitAlbum();
    super.onInit();
  }

  bool isLoading = false;

  late GoogleAlbumList googleAlbumListModel;
   List<GoogleAlbum> googleAlbumList =[];

  Future<void> getInitAlbum() async {
    isLoading = true;
    update();
    var request = {};
    request['pageSize'] = 10;
    var requestJson = json.encode(request);

    final response = await http.get(
      Uri.parse("https://photoslibrary.googleapis.com/v1/albums"),
      headers: await mainService.currentUser!.authHeaders,
    );

    safePrint(response.body);

    googleAlbumListModel = GoogleAlbumList.fromJson(json.decode(response.body));
    safePrint(googleAlbumListModel.albums.length);

    googleAlbumList = googleAlbumListModel.albums;
    update();

    isLoading = false;
    update();
  }




  GooglePhotoList? albumData;

  Future<void> albumDetailData(String albumId) async {

    safePrint(albumId);
    safePrint('앨범 아이디');

    isLoading = true;
    update();
    var request = {};
    request['albumId'] = albumId;
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
    albumData = loginResponse;




    htmlList =[];
    for(int i=0; i<albumData!.mediaItems!.length; i++){

      HtmlFormat htmlFormat = HtmlFormat();
      htmlList.add(htmlFormat.htmlFormat1.replaceAll('imageLocation', '${albumData!.mediaItems![i].baseUrl!}=d').replaceAll('creationAtText', albumData!.mediaItems![i].mediaMetadata!.creationTime!));
      safePrint('흐트믈 길이');
      safePrint(htmlList.length);
    }



    isLoading = false;
    update();
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