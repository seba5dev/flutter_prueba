import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  @override
  ShopApp createState() => ShopApp();
}

class ShopApp extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Comidas Rapidas',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Hamburguesas, perros calientes y mas',
                  style: TextStyle(color: Colors.grey[500]),
                )
              ],
            )),
            Container(
              width: 80,
              height: 80,
              child: Image.asset('img/logocomida.png'),
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Entrar'))
          ],
        ));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de tiendas'),
      ),
      body: ListView(
        children: [titleSection],
      ),
    );
  }
}
