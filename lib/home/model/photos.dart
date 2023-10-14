class Photos {
  Photos({
    String? description,
    String? url,
    String? title,
    int? id,
    int? user,}){
    _description = description;
    _url = url;
    _title = title;
    _id = id;
    _user = user;
  }

  Photos.fromJson(dynamic json) {
    _description = json['description'];
    _url = json['url'];
    _title = json['title'];
    _id = json['id'];
    _user = json['user'];
  }
  String? _description;
  String? _url;
  String? _title;
  int? _id;
  int? _user;
  Photos copyWith({  String? description,
    String? url,
    String? title,
    int? id,
    int? user,
  }) => Photos(  description: description ?? _description,
    url: url ?? _url,
    title: title ?? _title,
    id: id ?? _id,
    user: user ?? _user,
  );
  String? get description => _description;
  String? get url => _url;
  String? get title => _title;
  int? get id => _id;
  int? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['description'] = _description;
    map['url'] = _url;
    map['title'] = _title;
    map['id'] = _id;
    map['user'] = _user;
    return map;
  }

}