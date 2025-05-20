/// 文章列表响应模型，包含分页信息和文章列表
class ArticleListRsp {
  final int curPage; // 当前页码
  final int offset; // 列表数据在总数据中的起始位置
  final bool over; // 是否已加载完所有数据 (true: 是, false: 否)
  final int pageCount; // 总页数
  final int size; // 每页数据量
  final int total; // 总数据量
  final List<ArticleRsp> datas; // 文章列表数据

  ArticleListRsp({
    required this.curPage,
    required this.offset,
    required this.over,
    required this.pageCount,
    required this.size,
    required this.total,
    required this.datas,
  });

  /// 创建一个所有属性为0或空的ArticleListRsp实例
  ArticleListRsp.zero()
      : curPage = 0,
        offset = 0,
        over = false,
        pageCount = 0,
        size = 0,
        total = 0,
        datas = [];

  factory ArticleListRsp.fromJson(Map<String, dynamic> json) {
    return ArticleListRsp(
      curPage: json['curPage'] as int,
      offset: json['offset'] as int,
      over: json['over'] as bool,
      pageCount: json['pageCount'] as int,
      size: json['size'] as int,
      total: json['total'] as int,
      datas: (json['datas'] as List<dynamic>)
          .map((e) => ArticleRsp.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'curPage': curPage,
      'offset': offset,
      'over': over,
      'pageCount': pageCount,
      'size': size,
      'total': total,
      'datas': datas.map((e) => e.toJson()).toList(),
    };
  }
}

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
  final bool? adminAdd; // 是否为管理员添加
  final String? apkLink; // APK链接
  final int? audit; // 审核状态
  final bool? canEdit; // 是否可编辑
  final int? chapterId; // 章节ID
  final int? courseId; // 课程ID
  final String? descMd; // Markdown格式的描述
  final String? host; // 主机
  final bool? isAdminAdd; // 是否为管理员添加
  final String? origin; // 来源
  final String? prefix; // 前缀
  final String? projectLink; // 项目链接
  final int? realSuperChapterId; // 真实的一级分类ID
  final int? selfVisible; // 是否自己可见
  final int? superChapterId; // 一级分类ID
  final int? visible; // 是否可见
  final int? zan; // 点赞数

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
    this.adminAdd,
    this.apkLink,
    this.audit,
    this.canEdit,
    this.chapterId,
    this.courseId,
    this.descMd,
    this.host,
    this.isAdminAdd,
    this.origin,
    this.prefix,
    this.projectLink,
    this.realSuperChapterId,
    this.selfVisible,
    this.superChapterId,
    this.visible,
    this.zan,
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
      adminAdd: json['adminAdd'] as bool?,
      apkLink: json['apkLink'] as String?,
      audit: json['audit'] as int?,
      canEdit: json['canEdit'] as bool?,
      chapterId: json['chapterId'] as int?,
      courseId: json['courseId'] as int?,
      descMd: json['descMd'] as String?,
      host: json['host'] as String?,
      isAdminAdd: json['isAdminAdd'] as bool?,
      origin: json['origin'] as String?,
      prefix: json['prefix'] as String?,
      projectLink: json['projectLink'] as String?,
      realSuperChapterId: json['realSuperChapterId'] as int?,
      selfVisible: json['selfVisible'] as int?,
      superChapterId: json['superChapterId'] as int?,
      visible: json['visible'] as int?,
      zan: json['zan'] as int?,
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
      'adminAdd': adminAdd,
      'apkLink': apkLink,
      'audit': audit,
      'canEdit': canEdit,
      'chapterId': chapterId,
      'courseId': courseId,
      'descMd': descMd,
      'host': host,
      'isAdminAdd': isAdminAdd,
      'origin': origin,
      'prefix': prefix,
      'projectLink': projectLink,
      'realSuperChapterId': realSuperChapterId,
      'selfVisible': selfVisible,
      'superChapterId': superChapterId,
      'visible': visible,
      'zan': zan,
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
