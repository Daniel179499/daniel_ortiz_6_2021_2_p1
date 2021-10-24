import 'package:daniel_ortiz_6_2021_2_p1/models/data_news.dart';

class categorynews {
  String category = '';
  List<Data> data = [
    Data(
        author: '',
        content: '',
        date: '',
        imageUrl: '',
        readMoreUrl: '',
        time: '',
        title: '',
        url: '')
  ];
  bool success = true;

  categorynews(
      {required this.category, required this.data, required this.success});

  categorynews.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    if (json['data'] != null) {
      //data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
      success = json['success'];
    }

    Map<String, dynamic> toJson() {
      final Map<String, dynamic> data = <String, dynamic>{};
      data['category'] = this.category;
      if (this.data != null) {
        data['data'] = this.data.map((v) => v.toJson()).toList();
      }
      data['success'] = this.success;
      return data;
    }
  }
}
