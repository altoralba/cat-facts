import 'package:meta/meta.dart';
import 'dart:convert';

CatFacts catFactsFromJson(String str) => CatFacts.fromJson(json.decode(str));

String catFactsToJson(CatFacts data) => json.encode(data.toJson());

class CatFacts {
  CatFacts({
    required this.currentPage,
    required this.data,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    required this.links,
    required this.nextPageUrl,
    required this.path,
    required this.perPage,
    required this.prevPageUrl,
    required this.to,
    required this.total,
  });

  int currentPage;
  List<Datum> data;
  String firstPageUrl;
  int from;
  int lastPage;
  String lastPageUrl;
  List<Link> links;
  String nextPageUrl;
  String path;
  int perPage;
  dynamic prevPageUrl;
  int to;
  int total;

  factory CatFacts.fromJson(Map<String, dynamic> json) => CatFacts(
    currentPage: json["current_page"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    firstPageUrl: json["first_page_url"],
    from: json["from"],
    lastPage: json["last_page"],
    lastPageUrl: json["last_page_url"],
    links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
    nextPageUrl: json["next_page_url"],
    path: json["path"],
    perPage: json["per_page"],
    prevPageUrl: json["prev_page_url"],
    to: json["to"],
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "current_page": currentPage,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "first_page_url": firstPageUrl,
    "from": from,
    "last_page": lastPage,
    "last_page_url": lastPageUrl,
    "links": List<dynamic>.from(links.map((x) => x.toJson())),
    "next_page_url": nextPageUrl,
    "path": path,
    "per_page": perPage,
    "prev_page_url": prevPageUrl,
    "to": to,
    "total": total,
  };
}

class Datum {
  Datum({
    required this.fact,
    required this.length,
  });

  String fact;
  int length;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    fact: json["fact"],
    length: json["length"],
  );

  Map<String, dynamic> toJson() => {
    "fact": fact,
    "length": length,
  };
}

class Link {
  Link({
    required this.label,
    required this.active,
  });

  String label;
  bool active;

  factory Link.fromJson(Map<String, dynamic> json) => Link(
    label: json["label"],
    active: json["active"],
  );

  Map<String, dynamic> toJson() => {
    "label": label,
    "active": active,
  };
}
