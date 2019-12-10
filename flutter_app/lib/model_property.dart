import 'dart:convert';

class Property {
  String uuid_property;
  String description;
  int price;

  Property({
    this.uuid_property,
    this.description,
    this.price,
  });

  factory Property.fromJson(Map<String, dynamic> json) => new Property(
    uuid_property: json["uuid_property"],
    description: json["description"],
    price: json['price']
  );

  Map<String, dynamic> toJson() => {
    "uuid_property": uuid_property,
    "description": description,
    'price': price,
  };
}

Property postFromJson(String str) {
  final jsonData = json.decode(str);
  return Property.fromJson(jsonData);
}

List<Property> allPostsFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Property>.from(jsonData.map((x) => Property.fromJson(x)));
}