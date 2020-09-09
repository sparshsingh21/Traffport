class Report {
  static String url;
  static String desc;
  static String dateTime;

  Map<String, dynamic> toJson() => {
        'url': url,
        'description': desc,
        'dateAndTime': dateTime,
      };
}
