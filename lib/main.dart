import 'package:flutter/material.dart';

void main() {
  runApp(MyRestaurantApp());
}

//void main() {
//  runApp(MyApp());
//}

/*class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView Example",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("List  View Example JWCA"), 
        ),
        body: ListView(
          children: const <Widget>[
            ListTile ( 
              leading: Icon(Icons.album),
              title: Text("Home"),
              subtitle: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              subtitle: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text("Chat"),
              subtitle: Text("Chat"),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("Email"),
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text("Búsqueda"),
              subtitle: Text("Búsqueda"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Ayuda"),
              subtitle: Text("Ayuda"),
            ),
            ListTile(
              leading: Icon(Icons.support),
              title: Text("Soporte"),
              subtitle: Text("Soporte"),
            ),

            ],
          ),
        ),
    );
  }
}
*/

class Food {

  final String nombre;
  final String precio;
  final Image imagen;


  Food( this.nombre,  this.precio,  this.imagen);
}

List<Food> foods = [
  Food("Hamburguesa", "8.99", Image.network("https://picsum.photos/250?image=9") ),
  Food("Pizza", "8.99", Image.network("https://picsum.photos/250?image=9")),
  Food("Ensalada César", "8.99", Image.network("https://picsum.photos/250?image=9")),
  Food("Sopa del día", "8.99", Image.network("https://picsum.photos/250?image=9")),
];

class MyRestaurantApp extends StatelessWidget {
  //const MyRestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JWCA',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MENÚ DE RESYTAURANTE JWCA"),
        ),
        body: ListView.builder(
          itemCount: foods.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(foods[index].nombre),
              subtitle: foods[index].imagen,
              leading: Text(foods[index].precio),
            );
          }
        ),
      ),

    );
  }
}