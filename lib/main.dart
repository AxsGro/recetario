import 'package:flutter/material.dart';

void main() => runApp(const MyApp());
//Clase para controlar RecipeCard
class RecipeCard {
  final String title;
  final String imagePath;
  final String description;
  final String route;

  RecipeCard({
    required this.title,
    required this.imagePath,
    required this.description,
    required this.route,
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recetario App',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeView(),
        '/first': (context) => const FirstView(),
        '/second': (context) => const SecondView(),
        '/third': (context) => const EditRecipeForm(),
      },
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String selectedCategory = 'Food';

  void changeCategory(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Vista Principal'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    changeCategory('Food');
                  },
                  child: const Text('Food'),
                ),
                ElevatedButton(
                  onPressed: () {
                    changeCategory('Drink');
                  },
                  child: const Text('Drink'),
                ),
                ElevatedButton(
                  onPressed: () {
                    changeCategory('Sauces');
                  },
                  child: const Text('Sauces'),
                ),
                ElevatedButton(
                  onPressed: () {
                    changeCategory('Snacks');
                  },
                  child: const Text('Snacks'),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.2),

            Visibility(
              visible: selectedCategory == 'Food',
              child: buildRecipeCards([
                RecipeCard(
                  title: 'Enchiladas verdes',
                  imagePath: 'assets/food1.jpg',
                  description: 'Enchiladas verdes de pollo y queso',
                  route: '/recipeFood1',
                ),
                RecipeCard(
                  title: 'Sopes',
                  imagePath: 'assets/food2.jpg',
                  description: 'Sopes de carne con frijol',
                  route: '/recipeFood2',
                ),
                RecipeCard(
                  title: 'Pozole rojo',
                  imagePath: 'assets/food3.jpg',
                  description: 'Pozole rojo de res',
                  route: '/recipeFood3',
                ),
                RecipeCard(
                  title: 'Tacos de bistec',
                  imagePath: 'assets/food4.jpg',
                  description: 'Tacos de bistec de res',
                  route: '/recipeFood4',
                ),
              ]),
            ),

            Visibility(
              visible: selectedCategory == 'Drink',
              child: buildRecipeCards([
                RecipeCard(
                  title: 'Receta Drink 1',
                  imagePath: 'assets/drink1.jpg',
                  description: 'Descripción de Receta Drink 1',
                  route: '/recipeDrink1',
                ),
                RecipeCard(
                  title: 'Receta Drink 2',
                  imagePath: 'assets/drink2.jpg',
                  description: 'Descripción de Receta Drink 2',
                  route: '/recipeDrink2',
                ),
                RecipeCard(
                  title: 'Receta Drink 3',
                  imagePath: 'assets/drink3.jpg',
                  description: 'Descripción de Receta Drink 3',
                  route: '/recipeDrink3',
                ),
                RecipeCard(
                  title: 'Receta Drink 4',
                  imagePath: 'assets/drink4.jpg',
                  description: 'Descripción de Receta Drink 4',
                  route: '/recipeDrink4',
                ),
              ]),
            ),

            Visibility(
              visible: selectedCategory == 'Sauces',
              child: buildRecipeCards([
                RecipeCard(
                  title: 'Receta Sauces 1',
                  imagePath: 'assets/sauces1.jpg',
                  description: 'Descripción de Receta Sauces 1',
                  route: '/recipeSauces1',
                ),
                RecipeCard(
                  title: 'Receta Sauces 2',
                  imagePath: 'assets/sauces2.jpg',
                  description: 'Descripción de Receta Sauces 2',
                  route: '/recipeSauces2',
                ),
                RecipeCard(
                  title: 'Receta Sauces 3',
                  imagePath: 'assets/sauces3.jpg',
                  description: 'Descripción de Receta Sauces 3',
                  route: '/recipeSauces3',
                ),
                RecipeCard(
                  title: 'Receta Sauces 4',
                  imagePath: 'assets/sauces4.jpg',
                  description: 'Descripción de Receta Sauces 4',
                  route: '/recipeSauces4',
                ),
              ]),
            ),

            Visibility(
              visible: selectedCategory == 'Snacks',
              child: buildRecipeCards([
                RecipeCard(
                  title: 'Nachos',
                  imagePath: 'assets/snack1.jpg',
                  description: 'Nachos con huacamole, tocino y queso.',
                  route: '/recipeSnacks1',
                ),
                RecipeCard(
                  title: 'Receta Snacks 2',
                  imagePath: 'assets/snacks2.jpg',
                  description: 'Descripción de Receta Snacks 2',
                  route: '/recipeSnacks2',
                ),
                RecipeCard(
                  title: 'Receta Snacks 3',
                  imagePath: 'assets/snacks3.jpg',
                  description: 'Descripción de Receta Snacks 3',
                  route: '/recipeSnacks3',
                ),
                RecipeCard(
                  title: 'Receta Snacks 4',
                  imagePath: 'assets/snacks4.jpg',
                  description: 'Descripción de Receta Snacks 4',
                  route: '/recipeSnacks4',
                ),
              ]),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('LatMenu'),
            ),
            ListTile(
              title: const Text('Perfil'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/first');
              },
            ),
            ListTile(
              title: const Text('Nueva receta'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/second');
              },
            ),
            ListTile(
              title: const Text('Editar receta'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/third');
              },
            )
          ],
        ),
      ),
    );
  }

  Widget buildRecipeCards(List<RecipeCard> recipeCards) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RecipeCardWidget(card: recipeCards[0]),
            RecipeCardWidget(card: recipeCards[1]),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RecipeCardWidget(card: recipeCards[2]),
            RecipeCardWidget(card: recipeCards[3]),
          ],
        ),
      ],
    );
  }
}

class RecipeCardWidget extends StatelessWidget {
  final RecipeCard card;

  const RecipeCardWidget({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, card.route);
      },
      child: Card(
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(card.imagePath),
              radius: 40,
            ),
            const SizedBox(height: 8),
            Text(card.title),
            Text(card.description),
          ],
        ),
      ),
    );
  }
}

class FirstView extends StatelessWidget {
  const FirstView({Key? key}) : super(key: key);

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey,
                  child: IconButton(
                    icon: Icon(Icons.camera_alt),
                    onPressed: () {
                      
                    },
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Nombre: Pablo123',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Correo: Pablo123@gmail.com',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: const Text('Mis Listas'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: const Text('Likes'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: const Text('Mis Recetas'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: const Text('Mi cuenta'),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: const Text('Cerrar Sesión'),
                ),
              ],
            ),
          ),
        ),
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
        title: const Text('Crear receta'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey, 
                child: IconButton(
                  icon: Icon(Icons.camera_alt),
                  onPressed: () {

                  },
                ),
              ),
              const SizedBox(height: 16),              
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Título',
                  hintText: 'Introduce el título de la receta',
                ),
              ),
              const SizedBox(height: 16),             
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Descripción',
                  hintText: 'Introduce una descripción de la receta',
                ),
                maxLines: 1, 
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Ingredientes',
                  hintText: 'Introduce los ingredientes de la receta',
                ),
                maxLines: 1, 
              ),
              const SizedBox(height: 16),              
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Pasos',
                  hintText: 'Introduce los pasos de la receta',
                ),
                maxLines: 1, 
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () { 
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/');                               
                },
                child: const Text('Guardar Receta'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EditRecipeForm extends StatefulWidget {
  const EditRecipeForm({Key? key}) : super(key: key);

  @override
  _EditRecipeFormState createState() => _EditRecipeFormState();
}

class _EditRecipeFormState extends State<EditRecipeForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController ingredientsController = TextEditingController();
  TextEditingController stepsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar Receta'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: titleController,
                decoration: const InputDecoration(labelText: 'Título'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingresa un título';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: descriptionController,
                decoration: const InputDecoration(labelText: 'Descripción'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingresa una descripción';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: ingredientsController,
                decoration: const InputDecoration(labelText: 'Ingredientes'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingresa los ingredientes';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: stepsController,
                decoration: const InputDecoration(labelText: 'Pasos'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingresa los pasos';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/');
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Receta actualizada exitosamente'),
                      ),
                    );
                  }
                },
                child: const Text('Actualizar Receta'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
