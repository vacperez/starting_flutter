import 'package:flutter/material.dart';
import 'package:flutter_app/property_model.dart';
import 'package:flutter_app/property_services.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {

Widget projectWidget() {
  return FutureBuilder(
    builder: (context, projectSnap) {
      if (projectSnap.connectionState == ConnectionState.none &&
          projectSnap.hasData == null) {
        //print('project snapshot data is: ${projectSnap.data}');
        return Container();
      }
      return ListView.builder(
        itemCount: projectSnap.data.length,
        itemBuilder: (context, index) {
         // Property project = projectSnap.data[index];
         print(projectSnap.data[index].images['images'][0]["url"]);
          return Column(
            children: <Widget>[
              Image.network('https://via.placeholder.com/120')// Widget to display the list of project
              //  Image.network(projectSnap.data[index].images['images'][0]["url"])// Widget to display the list of project
            ],
          );
        },
      );
    },
    future: getAllProperties(),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: projectWidget(),
        );
  }

}
/*

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [FutureBuilder<List<Property>>(
              future: getAllProperties(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  var texto = '';
                    List<Image> imageList = new List<Image>();
                  return FutureBuilder(
                      builder: (context, projectSnap) {
                        if (projectSnap.connectionState == ConnectionState.none &&
                            projectSnap.hasData == null) {
                          //print('project snapshot data is: ${projectSnap.data}');
                          return Container();
                        }
                  return ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, index) {
                              print( snapshot.data[index]);
                              return Column(
                                children: <Widget>[
                                   Image.network('https://via.placeholder.com/10'),
                                  // Widget to display the list of project
                                ],
                              );
                            },
                          );

                  // for (final x in snapshot.data) {
                  // //  imageList.add(Image.network('https://via.placeholder.com/120'));
                  //   return Column(
                  //                 children: <Widget>[
                  //                   snapshot.data.map(f){
                  //                     return Image.network(x.images['images'][3]["url"])
                  //                   }
                  //                   Image.network(x.images['images'][3]["url"]),
                  //                   Image.network('https://via.placeholder.com/120'),// Widget to display the list of project
                  //                   Image.network(x.images['images'][0]["url"]),
                  //                   Image.network(x.images['images'][1]["url"])
                  //                 ],
                  //               );
                    
                  //            //Image.network('https://via.placeholder.com/150')
                  //   // Child: return Image.network(x.images['images'][0]["url"]);
                  //   //texto =  x.images['images'][0]["url"];
                  //   print(x.images['images'][0]["url"]);
                  // }
                      
                  
                  if (snapshot.hasError) {
                    print(Text("Error"));
                  }
                  if (snapshot.hasData) {
                    // return imageList.map((img){ return img} 
                    // return imageList;
                   // return Text(texto);
                  }
                } else
                  return CircularProgressIndicator();
              })],
        ));
  }
}



 */