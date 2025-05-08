
class BannerRsp {
  String desc;
  int id;
  String imagePath;
  int isVisible;
  int order;
  String title;
  int type;
  String url;

  BannerRsp({
    required this.desc,
    required this.id,
    required this.imagePath,
    required this.isVisible,
    required this.order,
    required this.title,
    required this.type,
    required this.url,
  });

  factory BannerRsp.fromJson(Map<String, dynamic> json) {
    return BannerRsp(
      desc: json['desc'],
      id: json['id'],
      imagePath: json['imagePath'],
      isVisible: json['isVisible'],
      order: json['order'],
      title: json['title'],
      type: json['type'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'desc': desc,
      'id': id,
      'imagePath': imagePath,
      'isVisible': isVisible,
      'order': order,
      'title': title,
      'type': type,
      'url': url,
    };
  }
}
