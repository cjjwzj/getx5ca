# 玩 Android API 接口整理（根据 https://www.wanandroid.com/blog/show/2 ）

## 1. 首页相关

### 1.1 首页文章列表

- 接口地址：`/article/list/{page}/json`
- 请求方法：GET
- 参数：
  - `page`
    - 类型：`int`
    - 是否必填：是
    - 描述：页码，从 0 开始计数。
    - 示例值：`0`
  - `page_size`
    - 类型：`int`
    - 是否必填：否 (可选)
    - 描述：每页包含的文章数量，取值范围 1-40。
    - 示例值：`20`
- 返回结构：
  - `data` (`object`)：包含文章列表及分页信息的对象。
    - `curPage` (`int`)：当前页码。
    - `datas` (`array`)：当前页的文章列表。每个元素包含以下字段：
      - `adminAdd` (`boolean`): 是否为管理员添加。
      - `apkLink` (`string`): APK 下载链接。
      - `audit` (`int`): 审核状态。
      - `author` (`string`): 作者名称 (若为空，则为分享人)。
      - `canEdit` (`boolean`): 是否可以编辑。
      - `chapterId` (`int`): 所属章节 ID。
      - `chapterName` (`string`): 所属章节名称。
      - `collect` (`boolean`): 是否收藏。
      - `courseId` (`int`): 课程 ID。
      - `desc` (`string`): 文章描述。
      - `descMd` (`string`): Markdown 格式的文章描述。
      - `envelopePic` (`string`): 文章封面图片链接。
      - `fresh` (`boolean`): 是否为新文章。
      - `host` (`string`): 文章来源域名。
      - `id` (`int`): 文章 ID。
      - `isAdminAdd` (`boolean`): 是否为管理员添加 (与 adminAdd 字段意义相同，可能为冗余字段)。
      - `link` (`string`): 文章链接。
      - `niceDate` (`string`): 格式化后的发布日期 (例如："2 小时前", "昨天 10:00")。
      - `niceShareDate` (`string`): 格式化后的分享日期。
      - `origin` (`string`): 来源。
      - `prefix` (`string`): 前缀。
      - `projectLink` (`string`): 项目链接。
      - `publishTime` (`long`): 发布时间戳。
      - `realSuperChapterId` (`int`): 实际的父级章节 ID。
      - `selfVisible` (`int`): 是否仅自己可见 (0: 不可见, 1: 可见)。
      - `shareDate` (`long`): 分享时间戳。
      - `shareUser` (`string`): 分享人名称。
      - `superChapterId` (`int`): 父级章节 ID。
      - `superChapterName` (`string`): 父级章节名称。
      - `tags` (`array`): 文章标签列表。每个标签对象包含：
        - `name` (`string`): 标签名称。
        - `url` (`string`): 标签链接。
      - `title` (`string`): 文章标题。
      - `type` (`int`): 文章类型 (0: 普通文章, 1: 置顶文章)。
      - `userId` (`int`): 用户 ID。
      - `visible` (`int`): 可见性 (0: 不可见, 1: 可见)。
      - `zan` (`int`): 点赞数量。
    - `offset` (`int`)：列表数据在总数据中的起始位置。
    - `over` (`boolean`)：是否已加载完所有数据 (true: 是, false: 否)。
    - `pageCount` (`int`)：总页数。
    - `size` (`int`)：每页数据量。
    - `total` (`int`)：总数据量。
  - `errorCode` (`int`)：错误码。`0` 表示成功，`-1` 表示普通失败，`-1001` 表示登录失效。
    - 示例值：`0`
  - `errorMsg` (`string`)：错误信息。成功时为空字符串。
    - 示例值：`""`

### 1.2 首页 banner

- 接口地址：`/banner/json`
- 请求方法：GET
- 参数：无
- 返回结构：
  - `data` (`array`)：Banner 列表，每个元素是一个 Banner 对象，包含以下字段：
    - `desc` (`string`)：Banner 的描述信息。
      - 示例值：`"一起来做个App吧"`
    - `id` (`int`)：Banner 的唯一标识符。
      - 示例值：`10`
    - `imagePath` (`string`)：Banner 图片的 URL 地址。
      - 示例值：`"https://www.wanandroid.com/blogimgs/50c115c2-cf6c-4802-aa7b-a4334de444cd.png"`
    - `isVisible` (`int`)：Banner 是否可见 (通常 `1` 表示可见)。
      - 示例值：`1`
    - `order` (`int`)：Banner 的显示顺序，数值越小越靠前。
      - 示例值：`1`
    - `title` (`string`)：Banner 的标题。
      - 示例值：`"一起来做个App吧"`
    - `type` (`int`)：Banner 类型。
      - 示例值：`0`
    - `url` (`string`)：Banner 点击后跳转的 URL 地址。
      - 示例值：`"https://www.wanandroid.com/blog/show/2"`
  - `errorCode` (`int`)：错误码。`0` 表示成功，其他值表示失败。
    - 示例值：`0`
  - `errorMsg` (`string`)：错误信息。成功时为空字符串。
    - 示例值：`""`

### 1.3 常用网站

- 接口地址：`/friend/json`
- 请求方法：GET
- 参数：无
- 返回结构：
  - `data` (`array`)：常用网站列表，每个元素是一个常用网站对象，包含以下字段：
    - `category` (`string`)：网站所属分类。
      - 示例值：`"源码"`
    - `icon` (`string`)：网站图标的 URL 地址 (可能为空)。
      - 示例值：`""`
    - `id` (`int`)：常用网站的唯一标识符。
      - 示例值：`17`
    - `link` (`string`)：网站的 URL 地址。
      - 示例值：`"http://www.androiddevtools.cn/"`
    - `name` (`string`)：网站名称。
      - 示例值：`"AndroidDevTools"`
    - `order` (`int`)：网站的显示顺序，数值越小越靠前。
      - 示例值：`1`
    - `visible` (`int`)：网站是否可见 (通常 `1` 表示可见)。
      - 示例值：`1`
  - `errorCode` (`int`)：错误码。`0` 表示成功，其他值表示失败。
    - 示例值：`0`
  - `errorMsg` (`string`)：错误信息。成功时为空字符串。
    - 示例值：`""`

### 1.4 搜索热词

- 接口地址：`/hotkey/json`
- 请求方法：GET
- 参数：无
- 返回结构：
  - `data` (`array`)：热词列表，每个元素是一个热词对象，包含以下字段：
    - `id` (`int`)：热词的唯一标识符。
      - 示例值：`6`
    - `link` (`string`)：热词相关的链接 (可能为空)。
      - 示例值：`""`
    - `name` (`string`)：热词的名称。
      - 示例值：`"面试"`
    - `order` (`int`)：热词的显示顺序，数值越小越靠前。
      - 示例值：`1`
    - `visible` (`int`)：热词是否可见 (通常 `1` 表示可见)。
      - 示例值：`1`
  - `errorCode` (`int`)：错误码。`0` 表示成功，其他值表示失败。
    - 示例值：`0`
  - `errorMsg` (`string`)：错误信息。成功时为空字符串。
    - 示例值：`""`

### 1.5 置顶文章

- 接口地址：`/article/top/json`
- 请求方法：GET
- 参数：无
- 返回结构：
  - `data` (`array`)：置顶文章列表。每个元素的结构与“首页文章列表”接口返回的 `datas` 数组中的文章对象结构相同。具体字段请参考 [1.1 首页文章列表](#11-首页文章列表) 的返回结构描述。
    - 示例值：(结构参考首页文章列表，此处省略具体示例)
  - `errorCode` (`int`)：错误码。`0` 表示成功，其他值表示失败。
    - 示例值：`0`
  - `errorMsg` (`string`)：错误信息。成功时为空字符串。
    - 示例值：`""`

## 2. 体系

### 2.1 体系数据

- 接口地址：`/tree/json`
- 请求方法：GET
- 参数：无
- 返回结构：
  - `data` (`array`)：体系结构树列表。每个元素是一个顶层体系分类，包含以下字段：
    - `children` (`array`)：子级体系分类列表。每个子元素结构与父级类似，可以嵌套多层。
      - `children` (`array`): 更深层级的子分类列表 (可能为空)。
      - `courseId` (`int`): 课程 ID。
        - 示例值：`13`
      - `id` (`int`): 分类 ID。
        - 示例值：`60`
      - `name` (`string`): 分类名称。
        - 示例值：`"Android Studio相关"`
      - `order` (`int`): 显示顺序。
        - 示例值：`1000`
      - `parentChapterId` (`int`): 父级分类 ID。
        - 示例值：`150`
      - `userControlSetTop` (`boolean`): 用户是否控制置顶。
        - 示例值：`false`
      - `visible` (`int`): 是否可见 (通常 `1` 表示可见)。
        - 示例值：`1`
    - `courseId` (`int`): 课程 ID。
      - 示例值：`13`
    - `id` (`int`): 分类 ID。
      - 示例值：`150`
    - `name` (`string`): 分类名称。
      - 示例值：`"开发环境"`
    - `order` (`int`): 显示顺序。
      - 示例值：`1`
    - `parentChapterId` (`int`): 父级分类 ID (顶层分类通常为 `0`)。
      - 示例值：`0`
    - `userControlSetTop` (`boolean`): 用户是否控制置顶。
      - 示例值：`false`
    - `visible` (`int`): 是否可见 (通常 `1` 表示可见)。
      - 示例值：`1`
  - `errorCode` (`int`)：错误码。`0` 表示成功，其他值表示失败。
    - 示例值：`0`
  - `errorMsg` (`string`)：错误信息。成功时为空字符串。
    - 示例值：`""`

## 3. 鸿蒙专栏

- 接口地址：`/harmony/index/json`
- 请求方法：GET
- 参数：无
- 返回结构：
  - `data` (`object`)：包含鸿蒙专栏相关信息的对象。
    - `links` (`array`)：相关链接列表。每个元素是一个链接对象，包含：
      - `category` (`string`): 分类名称。
        - 示例值：`"官方文档"`
      - `icon` (`string`): 图标 URL (可能为空)。
        - 示例值：`""`
      - `id` (`int`): 链接 ID。
        - 示例值：`1`
      - `link` (`string`): 链接 URL。
        - 示例值：`"https://developer.harmonyos.com/cn/docs"`
      - `name` (`string`): 链接名称。
        - 示例值：`"HarmonyOS官方文档"`
      - `order` (`int`): 显示顺序。
        - 示例值：`1`
      - `visible` (`int`): 是否可见 (通常 `1` 表示可见)。
        - 示例值：`1`
    - `open_sources` (`array`)：开源项目列表。每个元素是一个开源项目对象，结构类似 `links`。
      - (具体字段结构同 `links`，此处省略重复描述)
    - `tools` (`array`)：工具列表。每个元素是一个工具对象，结构类似 `links`。
      - (具体字段结构同 `links`，此处省略重复描述)
  - `errorCode` (`int`)：错误码。`0` 表示成功，其他值表示失败。
    - 示例值：`0`
  - `errorMsg` (`string`)：错误信息。成功时为空字符串。
    - 示例值：`""`

## 4. 首页最受欢迎板块

### 4.1 问答

- 接口地址：`/popular/wenda/json`
- 请求方法：GET
- 参数：无
- 返回结构：
  - `data` (`array`)：问答列表。每个元素的结构与“首页文章列表”接口返回的 `datas` 数组中的文章对象结构相同。具体字段请参考 [1.1 首页文章列表](#11-首页文章列表) 的返回结构描述。
    - 示例值：(结构参考首页文章列表，此处省略具体示例)
  - `errorCode` (`int`)：错误码。`0` 表示成功，其他值表示失败。
    - 示例值：`0`
  - `errorMsg` (`string`)：错误信息。成功时为空字符串。
    - 示例值：`""`

### 4.2 专栏

- 接口地址：`/popular/column/json`
- 请求方法：GET
- 参数：无
- 返回结构：
  - `data` (`array`)：专栏列表，每个元素是一个专栏对象，包含以下字段：
    - `id` (`int`)：专栏的唯一标识符。
      - 示例值：`1`
    - `name` (`string`)：专栏名称。
      - 示例值：`"Android Jetpack 组件"`
    - `author` (`string`)：专栏作者。
      - 示例值：`"谷歌开发者"`
    - `cover` (`string`)：专栏封面图片 URL。
      - 示例值：`"https://img.wanandroid.com/column/test_column_cover.png"`
    - `desc` (`string`)：专栏简介。
      - 示例值：`"深入解析 Android Jetpack 各个组件的原理与实践。"`
    - `articleCount` (`int`)：专栏包含的文章数量。
      - 示例值：`25`
    - `order` (`int`)：显示顺序，数值越小越靠前。
      - 示例值：`10`
    - `visible` (`int`)：是否可见 (通常 `1` 表示可见)。
      - 示例值：`1`
    - `link` (`string`)：专栏的跳转链接 (如果专栏本身是一个可跳转的实体)。
      - 示例值：`"/column/detail/1"`
    - `tags` (`array`): 专栏标签列表。每个标签对象包含：
      - `name` (`string`): 标签名称。
      - `url` (`string`): 标签链接。
  - `errorCode` (`int`)：错误码。`0` 表示成功，其他值表示失败。
    - 示例值：`0`
  - `errorMsg` (`string`)：错误信息。成功时为空字符串。
    - 示例值：`""`

### 4.3 路线

- 接口地址：`/popular/route/json`
- 请求方法：GET
- 参数：无
- 返回结构：
  - `data` (`array`)：路线列表，每个元素是一个路线对象，包含以下字段：
    - `id` (`int`)：路线的唯一标识符。
      - 示例值：`1`
    - `name` (`string`)：路线名称。
      - 示例值：`"Flutter 从入门到进阶"`
    - `desc` (`string`)：路线描述。
      - 示例值：`"系统学习 Flutter 开发的完整路径。"`
    - `cover` (`string`)：路线封面图片 URL。
      - 示例值：`"https://img.wanandroid.com/route/test_route_cover.png"`
    - `author` (`string`)：路线创建者/作者。
      - 示例值：`"张三"`
    - `articleCount` (`int`)：路线包含的文章或节点数量。
      - 示例值：`15`
    - `order` (`int`)：显示顺序，数值越小越靠前。
      - 示例值：`5`
    - `visible` (`int`)：是否可见 (通常 `1` 表示可见)。
      - 示例值：`1`
    - `link` (`string`)：路线的跳转链接 (如果路线本身是一个可跳转的实体)。
      - 示例值：`"/route/detail/1"`
    - `tags` (`array`): 路线标签列表。每个标签对象包含：
      - `name` (`string`): 标签名称。
      - `url` (`string`): 标签链接。
  - `errorCode` (`int`)：错误码。`0` 表示成功，其他值表示失败。
    - 示例值：`0`
  - `errorMsg` (`string`)：错误信息。成功时为空字符串。
    - 示例值：`""`

## 5. 其他说明

- 所有接口均为 HTTPS。
- 返回结构统一为：

```
{
  "data": ...,
  "errorCode": 0,
  "errorMsg": ""
}
```

- errorCode = 0 表示成功，-1001 登录失效，-1 其他错误。
- 具体字段含义及更多接口请参考官方文档。

---

> 本文档仅整理部分常用接口，更多接口请访问 [官方 API 文档](https://www.wanandroid.com/blog/show/2)
