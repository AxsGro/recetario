import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recetario App',
      initialRoute: '/', // Página inicial
      routes: {
        '/': (context) => const HomeView(),
        '/first': (context) => const FirstView(),
        '/second': (context) => const SecondView(),
        '/third': (context) => const ThirdView(),
        '/fourth': (context) => const FourthView(),
      },
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vista Principal'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children:[
                ElevatedButton(
                  onPressed: (){
                    print('Boton presionado');
                  }, 
                  child: const Text('Food')),
                ElevatedButton(
                  onPressed: (){
                    print('Boton presionado');
                  }, 
                  child: const Text('Drink')),
                ElevatedButton(
                  onPressed: (){
                    print('Boton presionado');
                  }, 
                  child: const Text('Sauces')),
                ElevatedButton(
                  onPressed: (){
                    print('Boton presionado');
                  }, 
                  child: const Text('Snacks')),
              ],//row children
            ),
          ],//column children
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('LatMenu'),
            ),
            ListTile(
              title: Text('Perfil'),
              onTap: () {
                Navigator.pop(context); // Cierra el Drawer
                Navigator.pushNamed(context, '/first'); // Puedes agregar más lógica aquí, como navegar a otra página.
              },
            ),
            ListTile(
              title: Text('Menu'),
              onTap: () {
                Navigator.pop(context); // Cierra el Drawer
                Navigator.pushNamed(context, '/second'); // Navega a la Segunda Vista
              },
            ),
            ListTile(
              title: Text('Nueva receta'),
              onTap: () {
                Navigator.pop(context); // Cierra el Drawer
                Navigator.pushNamed(context, '/third'); // Navega a la Tercera Vista
              },
            ),
            ListTile(
              title: Text('Editar receta'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/fourth');
              }
            )
          ],
        ),
      ),
    );
  }
}
class FirstView extends StatelessWidget{
  const FirstView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
      body: const Center(
        child: Text('Contenido Perfil'),
      ),
    );
  }
}

class SecondView extends StatelessWidget {
  const SecondView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: const Center(
        child: Text('Contenido segunda vista'),
      ),
    );
  }
}

class ThirdView extends StatelessWidget {
  const ThirdView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear receta'),
      ),
      body: const Center(
        child: Text('Contenido tercera vista'),
      ),
    );
  }
}

class FourthView extends StatelessWidget {
  const FourthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar receta'),
      ),
      body: const Center(
        child: Text('Contenido cuarta vista'),
      ),
    );
  }
}