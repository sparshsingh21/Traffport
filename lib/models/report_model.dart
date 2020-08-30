class Report {
  String url;
  String desc;
  String vehicleNo;
  String dateTime;

  Report(
    this.url,
    this.desc,
    this.vehicleNo,
    this.dateTime,
  );

  Map<String, dynamic> toJson() => {
        'url': url,
        'description': desc,
        'vehicle_no': vehicleNo,
        'dateAndTime': dateTime,
      };
}
