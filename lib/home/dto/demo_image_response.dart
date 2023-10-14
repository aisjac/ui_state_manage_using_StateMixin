import '../model/photos.dart';

/// success : true
/// total_photos : 132
/// message : "Successfully fetched 10 of 132 photos"
/// offset : 0
/// limit : 10
/// photos : [{"description":"Leader structure safe or black late wife newspaper her pick central forget single likely.","url":"https://api.slingacademy.com/public/sample-photos/1.jpeg","title":"Defense the travel audience hand","id":1,"user":28},{"description":"Much technology how within rather him lay why part actually system increase feel.","url":"https://api.slingacademy.com/public/sample-photos/2.jpeg","title":"Space build policy people model treatment town hard use","id":2,"user":25},{"description":"Street anything piece south yard since well point summer school economy respond people mother.","url":"https://api.slingacademy.com/public/sample-photos/3.jpeg","title":"Party about different guess bill too owner","id":3,"user":7},{"description":"Skill drug college contain herself future seat human yes approach how then maybe public summer play commercial anything woman include million body measure government clearly question quickly parent.","url":"https://api.slingacademy.com/public/sample-photos/4.jpeg","title":"Table husband","id":4,"user":22},{"description":"World early north TV around meet goal across reason responsibility have must build up some language soon.","url":"https://api.slingacademy.com/public/sample-photos/5.jpeg","title":"Support audience model program three music","id":5,"user":25},{"description":"Training beautiful age four skin cultural hundred environmental ability blood go physical relate produce tough open police.","url":"https://api.slingacademy.com/public/sample-photos/6.jpeg","title":"Apply future response she reduce decide","id":6,"user":30},{"description":"Few address take for special development white career.","url":"https://api.slingacademy.com/public/sample-photos/7.jpeg","title":"Fire year candidate too like","id":7,"user":20},{"description":"Drug if approach out according set home job company wall source trouble act huge easy style physical so month.","url":"https://api.slingacademy.com/public/sample-photos/8.jpeg","title":"Reflect design camera land girl wind behind side","id":8,"user":13},{"description":"Nature focus wonder behind magazine pattern degree far without tree consider.","url":"https://api.slingacademy.com/public/sample-photos/9.jpeg","title":"Per nature research","id":9,"user":2},{"description":"Parent talk collection fill between management purpose fish fight real teacher successful me arrive little.","url":"https://api.slingacademy.com/public/sample-photos/10.jpeg","title":"Yard","id":10,"user":30}]

class DemoImageResponse {
  DemoImageResponse({
      bool? success, 
      int? totalPhotos, 
      String? message, 
      int? offset, 
      int? limit, 
      List<Photos>? photos,}){
    _success = success;
    _totalPhotos = totalPhotos;
    _message = message;
    _offset = offset;
    _limit = limit;
    _photos = photos;
}

  DemoImageResponse.fromJson(dynamic json) {
    _success = json['success'];
    _totalPhotos = json['total_photos'];
    _message = json['message'];
    _offset = json['offset'];
    _limit = json['limit'];
    if (json['photos'] != null) {
      _photos = [];
      json['photos'].forEach((v) {
        _photos?.add(Photos.fromJson(v));
      });
    }
  }
  bool? _success;
  int? _totalPhotos;
  String? _message;
  int? _offset;
  int? _limit;
  List<Photos>? _photos;
DemoImageResponse copyWith({  bool? success,
  int? totalPhotos,
  String? message,
  int? offset,
  int? limit,
  List<Photos>? photos,
}) => DemoImageResponse(  success: success ?? _success,
  totalPhotos: totalPhotos ?? _totalPhotos,
  message: message ?? _message,
  offset: offset ?? _offset,
  limit: limit ?? _limit,
  photos: photos ?? _photos,
);
  bool? get success => _success;
  int? get totalPhotos => _totalPhotos;
  String? get message => _message;
  int? get offset => _offset;
  int? get limit => _limit;
  List<Photos>? get photos => _photos;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['total_photos'] = _totalPhotos;
    map['message'] = _message;
    map['offset'] = _offset;
    map['limit'] = _limit;
    if (_photos != null) {
      map['photos'] = _photos?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}


