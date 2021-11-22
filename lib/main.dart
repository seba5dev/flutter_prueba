import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'busqueda.dart';
import 'shop.dart';
import 'shopRegister.dart';
import 'gestionUsuario.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeStart createState() => HomeStart();
}

@override
class HomeStart extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('App de tiendas'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    EdgeInsets.only(left: 20, top: 40, right: 20, bottom: 0),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 200,
                    child: Image.asset('img/logo.png'),
                  ),
                ),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Búsqueda',
                      hintText: 'Palabra clave de la búsqueda'),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => busqueda()));
                  },
                  child: const Text('Buscar'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue[600], shape: StadiumBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 20, right: 20, bottom: 0),
                child: ElevatedButton(
                  onPressed: () {
                    //print("presionado");
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Shop()));
                  },
                  child: const Text('Listado de tiendas'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue[600],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(600))),

                  /*Builder(
                builder: (context) => ElevatedButton(
                  //EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 0),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => buscar()));
                  },
                  child: Text('Buscar'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red[600],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(600))),*/
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 0),
                child: ElevatedButton(
                  onPressed: () {
                    //print("presionado");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => shopRegister()));
                  },
                  child: Text('Registar tienda'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue[600],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(600))),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 0),
                child: ElevatedButton(
                  onPressed: () {
                    //print("presionado");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => gestionUsuario()));
                  },
                  child: Text('Gestión de usuario'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue[600],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(600))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
