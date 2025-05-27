# GetX5 实践

一个 Flutter 实践项目, 主要是为了学习 GetX5 的使用

## 技术栈

| 名称               | 版本                          |
| ------------------ | ----------------------------- |
| Flutter            | 3.29.0 channel stable         |
| Get                | 5.0.0-release-candidate-9.3.2 |
| shared_preferences | 2.5.3                         |
| url_launcher       | 6.2.6                         |

## 平台

- Flutter WEB

## 目的

- 处理嵌套导航导致的地址栏和页面不匹配
- 处理浏览器前进后退功能,联动地址栏
- 可以通过地址栏直接进入深度页面
- 通过路由中间件和路由回调控制页面进入权限
- 实现国际化
- 深度使用 GetX 自带的依赖注入来管理对象
- 通过 GetX 的响应式功能实现状态管理
- 使用 StateMixin 和 futurize 控制
  - 整体页面状态
  - 单个控件状态
