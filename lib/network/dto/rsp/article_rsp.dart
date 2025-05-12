/// 单个文章的数据模型
class ArticleRsp {
  final int id;
  final String? author; // 作者
  final String? shareUser; // 分享人，如果author为空则显示此字段
  final String link; // 文章链接
  final String title; // 文章标题
  final String? niceDate; // 格式化后的发布时间
  final String? niceShareDate; // 格式化后的分享时间
  final String? chapterName; // 所属章节名称
  final String? superChapterName; // 所属一级分类名称
  final bool collect; // 是否收藏
  final String? envelopePic; // 封面图片
  final String? desc; // 描述
  final int? publishTime; // 发布时间戳
  final int? shareDate; // 分享时间戳
  final int? type; // 类型，0:普通文章，1:置顶
  final int? userId; // 用户ID
  final bool? fresh; // 是否为新文章
  final List<Tag>? tags; // 标签

  ArticleRsp({
    required this.id,
    this.author,
    this.shareUser,
    required this.link,
    required this.title,
    this.niceDate,
    this.niceShareDate,
    this.chapterName,
    this.superChapterName,
    required this.collect,
    this.envelopePic,
    this.desc,
    this.publishTime,
    this.shareDate,
    this.type,
    this.userId,
    this.fresh,
    this.tags,
  });

  factory ArticleRsp.fromJson(Map<String, dynamic> json) {
    return ArticleRsp(
      id: json['id'] as int,
      author: json['author'] as String?,
      shareUser: json['shareUser'] as String?,
      link: json['link'] as String,
      title: json['title'] as String,
      niceDate: json['niceDate'] as String?,
      niceShareDate: json['niceShareDate'] as String?,
      chapterName: json['chapterName'] as String?,
      superChapterName: json['superChapterName'] as String?,
      collect: json['collect'] as bool? ?? false, // 提供默认值以防null
      envelopePic: json['envelopePic'] as String?,
      desc: json['desc'] as String?,
      publishTime: json['publishTime'] as int?,
      shareDate: json['shareDate'] as int?,
      type: json['type'] as int?,
      userId: json['userId'] as int?,
      fresh: json['fresh'] as bool?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'author': author,
      'shareUser': shareUser,
      'link': link,
      'title': title,
      'niceDate': niceDate,
      'niceShareDate': niceShareDate,
      'chapterName': chapterName,
      'superChapterName': superChapterName,
      'collect': collect,
      'envelopePic': envelopePic,
      'desc': desc,
      'publishTime': publishTime,
      'shareDate': shareDate,
      'type': type,
      'userId': userId,
      'fresh': fresh,
      'tags': tags?.map((e) => e.toJson()).toList(),
    };
  }
}

/// 文章标签模型
class Tag {
  final String name;
  final String url;

  Tag({required this.name, required this.url});

  factory Tag.fromJson(Map<String, dynamic> json) {
    return Tag(
      name: json['name'] as String,
      url: json['url'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
  }
}
