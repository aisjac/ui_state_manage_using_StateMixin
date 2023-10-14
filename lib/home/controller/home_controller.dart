import 'package:get/get.dart';
import 'package:ui_state_manage/home/dto/Demo_image_response.dart';
import 'package:ui_state_manage/home/repository/photos_repository.dart';

import '../model/photos.dart';

class HomeController extends GetxController with StateMixin<DemoImageResponse>{

  PhotosRepository photosRepository = Get.find();
  List<Photos> photoList = [];

  @override
  void onReady() {
    callForDemoImages();
    super.onReady();
  }

  void callForDemoImages()async{
    change(null,status: RxStatus.loading());
    try{
      final data = await photosRepository.getPhotoList();
      photoList = data.photos ?? [];
      change(data,status: RxStatus.success());
    }catch(e){
      change(null,status: RxStatus.error(e.toString()));
    }
  }
}