import 'package:flutter/material.dart';
import 'recipe.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MyApp();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Recipe Calculator',
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
        primary: Colors.grey,
        secondary: Colors.black,
      )),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //1
    return Scaffold(
      //2
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),

      //3
      body: SafeArea(
        //Replace Child Container
        //4
        child: ListView.builder(
          //5
          itemCount: Recipe.samples.length,
          //6
          itemBuilder: (BuildContext context, int index) {
            //7
            //add Gesture Detector
            return buildRecipeCard(Recipe.samples[index]);
          },
        ),
      ),
    );
  }

  //ToDo: buildRecipeCard() here
  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[Image(image: AssetImage(recipe.imageUrl)),
          const SizedBox(height: 14.0,),
          Text(recipe.label, style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            fontFamily: "Palantino",
          ),),],
        
        ),
      ),
    );
  }
}
