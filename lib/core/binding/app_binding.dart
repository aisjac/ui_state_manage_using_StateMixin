import 'package:get/get.dart';
import 'package:ui_state_manage/core/network/api_client.dart';
import 'package:ui_state_manage/home/repository/photos_repository.dart';
import 'package:ui_state_manage/home/repository/photos_repository_impl.dart';

class AppBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(ApiClient());
    Get.put<PhotosRepository>(PhotosRepositoryImpl());
  }

}