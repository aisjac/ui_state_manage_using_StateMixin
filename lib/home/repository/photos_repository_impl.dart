import 'package:get/get.dart';
import 'package:ui_state_manage/home/dto/Demo_image_response.dart';
import 'package:ui_state_manage/home/repository/photos_repository.dart';

import '../../core/network/api_client.dart';

class PhotosRepositoryImpl extends PhotosRepository{
  final ApiClient _apiClient = Get.find();
 
  @override
  Future<DemoImageResponse> getPhotoList() async{
    try{
      final response = await _apiClient.get("https://api.slingacademy.com/v1/sample-data/photos");
      return DemoImageResponse.fromJson(response);
    }catch(e){
      rethrow;
    }
  }

}