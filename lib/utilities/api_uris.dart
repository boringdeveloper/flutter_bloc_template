class ApiUris {
  static const String BASE_URL = "https://newsapi.org/";
  static const String VERSION_URI = "v2";
  static const String PROJECT_KEY = "";

  // end points
  static const String SAMPLE_ENDPOINT = "/top-headlines";

  static String replaceParam(String uri, String param, dynamic value) {
    return uri.replaceFirst("{$param}", "$value");
  }
}
