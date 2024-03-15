class CountryNameModel {
  final String common;
  final String official;

  CountryNameModel({required this.common, required this.official});

  factory CountryNameModel.fromJson(Map<String, dynamic> json) {
    return CountryNameModel(
        common: json["common"],
        official: json["official"]
    );
  }
}