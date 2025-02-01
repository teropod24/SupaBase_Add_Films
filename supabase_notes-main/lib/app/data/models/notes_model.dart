class Peliculas {
  int? id;
  int? userId;
  String? title;
  String? description;
  String? createdAt;
  int? edad;
  String? genero;

  Peliculas({this.id, this.userId, this.title, this.description, this.createdAt, this.edad, this.genero});

  Peliculas.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    title = json['Film name'];
    description = json['Film description'];
    createdAt = json['created_at'];
    edad = json['edad'];
    genero = json['genero'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['Film name'] = title;
    data['Film description'] = description;
    data['created_at'] = createdAt;
    data['edad'] = edad;
    data['genero'] = genero;
    return data;
  }

  static List<Peliculas> fromJsonList(List? data) {
    if (data == null || data.isEmpty) return [];
    return data.map((e) => Peliculas.fromJson(e)).toList();
  }
}
