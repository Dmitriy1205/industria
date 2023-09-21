enum Cookies{
  authentication("authentication");

  static List<Cookies> fromList(List<String> cookiesList){
    return cookiesList.map((e) => Cookies.fromKey(e)).whereType<Cookies>().toList();
  }
  static Cookies? fromKey(String key){
    return Cookies.values.where((e) => e.key == key).firstOrNull;
  }
  static List<String> toList(List<Cookies> cookies){
    return cookies.map((e) => e.key).toList();
  }
  final String key;
  const Cookies(this.key);
}