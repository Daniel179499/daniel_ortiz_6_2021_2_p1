import 'data_news.dart';

class Token {
  String category = '';
  List<dynamic> data = [""];
  bool success = false;

  Token({required this.category, required this.data, required this.success});

  Token.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    if (json['data'] != null) {
      //data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category'] = this.category;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['success'] = this.success;
    return data;
  }
}
