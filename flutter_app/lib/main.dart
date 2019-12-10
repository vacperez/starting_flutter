import 'package:flutter/material.dart';
import 'package:flutter_app/model_property.dart';
import 'package:flutter_app/service_property.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: Home()
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body : Center(
          child: FutureBuilder<List<Property>>(
              future: getAllProperties(),
               builder: (context, snapshot) {
                if(snapshot.connectionState == ConnectionState.done) {
                  var texto = '';
                  for( final x in  snapshot.data ) {
                    texto = texto +'\n \n' + x.description;
                    print(x.description);
                    }
                  if(snapshot.hasError){print(Text("Error"));
                  }
                  if(snapshot.hasData){
                    return Text(texto);
                  }
                }
                else
                  return CircularProgressIndicator();
              }
          ),
        )
    );
  }

}