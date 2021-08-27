// To parse this JSON data, do
//
//     final tokoModel = tokoModelFromJson(jsonString);

import 'dart:convert';

List<TokoModel> tokoModelFromJson(String str) => List<TokoModel>.from(json.decode(str).map((x) => TokoModel.fromJson(x)));


class TokoModel {
    TokoModel({
        this.id,
        this.namaToko,
        this.url,
        this.database,
    });

    String? id;
    String? namaToko;
    String? url;
    List<Database>? database;

    TokoModel copyWith({
        String? id,
        String? namaToko,
        String? url,
        List<Database>? database,
    }) => 
        TokoModel(
            id: id ?? this.id,
            namaToko: namaToko ?? this.namaToko,
            url: url ?? this.url,
            database: database ?? this.database,
        );

    factory TokoModel.fromJson(Map<String, dynamic> json) => TokoModel(
        id: json["id"],
        namaToko: json["namaToko"],
        url: json["url"],
        database: List<Database>.from(json["database"].map((x) => Database.fromJson(x))),
    );

}

class Database {
    Database({
        this.nama,
        this.url,
    });

    String? nama;
    String? url;

    Database copyWith({
        String? nama,
        String? url,
    }) => 
        Database(
            nama: nama ?? this.nama,
            url: url ?? this.url,
        );

    factory Database.fromJson(Map<String, dynamic> json) => Database(
        nama: json["nama"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "nama": nama,
        "url": url,
    };
}
