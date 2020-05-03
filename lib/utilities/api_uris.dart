class ApiUris {
  static const String BASE_URL = "";
  static const String VERSION_URI = "";
  static const String PROJECT_KEY = "";

  // end points
  static const String SAMPLE_ENDPOINT = "";

  static String replaceParam(String uri, String param, dynamic value) {
    return uri.replaceFirst("{$param}", "$value");
  }
}
