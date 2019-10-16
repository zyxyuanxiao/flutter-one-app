///API接口

class Api {
  static final Map<int, String> category = {
    0: "图文",
    1: "阅读",
    2: "连载",
    3: "问答",
    4: "音乐",
    5: "影视",
    8: "电台",
  };

  static final String _baseUrl = "http://v3.wufazhuce.com:8000/api";

  ///获取最新 idList（得到集合ID）
  static final String idListUrl = "$_baseUrl/onelist/idlist";

  ///根据集合ID获取首页oneList（将data替换为获取到的集合ID）
  static String getOneList(String data) {
    return "$_baseUrl/onelist/$data/0";
  }

  ///获取xx年xx月份的往期列表(首页点击头部ToolBar进入往期列表页面)
  static String getToolBarList(String date) {
    return "$_baseUrl/feeds/list/$date?channel=cool";
  }

  ///获取ALL页面专题列表(Banner)
  static final String allBannerUrl =
      "$_baseUrl/banner/list/4?last_id=0&channel=cool";

  ///获取ALL页面近期热门作者列表
  static final String hotAuthorUrl = "$_baseUrl/author/hot?channel=cool";

  ///获取特定日期的图文信息
  static String getCategoryUrl(String type, String date) {
    return "$_baseUrl/$type/bymonth/$date?channel=cool";
  }

  ///获取文章详情
  static String getDetailsUrl(String type, String id) {
    return "$_baseUrl/$type/detail/$id?channel=cool";
  }

  ///获取文章评论
  static String getCommentUrl(String type, String id) {
    return "$_baseUrl/comment/praiseandtime/$type/$id/0?channel=cool";
  }
}
