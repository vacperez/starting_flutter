import 'dart:convert';

class Property {
  String uuidProperty;
  String description;
  Map<String, dynamic> images;
  Property({
    this.uuidProperty,
    this.description,
    this.images
  });

  factory Property.fromJson(Map<String, dynamic> parseJson) {
    return new Property(
      uuidProperty: parseJson["uuid_property"],
      description: parseJson["description"],    
      images:    parseJson["images"]
    );
  }  
}
//  class Image {
//    int idImage;
//    String urlImage;

//    Image({this.idImage, this.urlImage});

//    factory Image.fromJson(Map<String, dynamic> parseJson){
//      return Image(
//        idImage : parseJson['id'],
//      urlImage: parseJson['url']
//      );
//    }
//  }



Property propertyFromJson(String str) {
  final jsonData = json.decode(str);
  print('..........');
  print(jsonData);
  print('..........');
  return Property.fromJson(jsonData);
}

List<Property> allPropertyFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Property>.from(jsonData.map((x) => Property.fromJson(x)));
}
