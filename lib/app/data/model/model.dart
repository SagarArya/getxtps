class Model {
  int? id;
  String? text;

  Model({this.id, this.text});

  Model.fromJson(Map<String, dynamic> json) {
    this.id = json['_id'];
    this.text = json['text'];
  }
}
