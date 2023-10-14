import '../dto/Demo_image_response.dart';

abstract class PhotosRepository{
  Future<DemoImageResponse> getPhotoList();
}