//TODO 비디오 리스트 받기
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tiktok_practice/app/data/model/video.dart';

Future<List<Video>> getVideoList() async {
  var videos = await FirebaseFirestore.instance.collection("Videos").get();

  /*if (videos.docs.isEmpty) {
    videos = await FirebaseFirestore.instance.collection("Videos").get();
  }*/

  return videos.docs.map((doc) => Video.fromJson(doc.data())).toList();
}
