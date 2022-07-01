import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
    color: Colors.lightGreen,
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Yummies:):)'),
          backgroundColor: Colors.green,
        ),
        backgroundColor: Colors.lightGreen,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: 450,
                  height: 250,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.lightGreen),
                    ),
                    child: Image(
                      image: AssetImage('assets/Classic_Burger.jpg'),
                      fit: BoxFit.cover ,
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Recipe1()),
                      );
                    },
                  ),
                ),
                Divider(height:1,),
                SizedBox(
                  width: 450,
                  height: 250,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.lightGreen),
                    ),
                    child: Image(
                      image: AssetImage('assets/Pasta_Mexicana.jpg'),
                      width: 400,
                      height: 230,
                      fit: BoxFit.cover ,
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Recipe2()),
                      );
                    },
                  ),
                ),
                Divider(height:1,),
                SizedBox(
                  width: 450,
                  height: 250,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.lightGreen),
                    ),
                    child: Image(
                      image: AssetImage('assets/Pizza_Margherita.jpg'),
                      width: 450,
                      fit: BoxFit.cover ,
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Recipe3()),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Recipe1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Page:)'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage('assets/Classic_Burger.jpg'),
          ),
          Text(
            'Classic Burger',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'Step 1:\n'+
                'In a bowl, mix ground beef, egg, onion, bread crumbs, Worcestershire, garlic, 1/2 teaspoon salt, and 1/4 teaspoon pepper until well blended. Divide mixture into four equal portions and shape each into a patty about 4 inches wide.\n' +
              'Step 2:\n'
              'Lay burgers on an oiled barbecue grill over a solid bed of hot coals or high heat on a gas grill (you can hold your hand at grill level only 2 to 3 seconds); close lid on gas grill. Cook burgers, turning once, until browned on both sides and no longer pink inside (cut to test), 7 to 8 minutes total. Remove from grill.\n'+
                'Step 3:\n'
                'Lay buns, cut side down, on grill and cook until lightly toasted, 30 seconds to 1 minute.'+
                'Step 4:\n'
                'Spread mayonnaise and ketchup on bun bottoms. Add lettuce, tomato, burger, onion, and salt and pepper to taste. Set bun tops in place.'
          ),

        ],

      ),
    );
  }
}

class Recipe2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Page:)'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage('assets/Pasta_Mexicana.jpg'),
          ),
          Text(
            'Pasta Mexicana',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
              'Step 1:\n'+
                  'Cook angel hair pasta according to package directions in a Dutch oven; drain. Return pasta to Dutch oven, and toss with 3/4 cup Mojo de Ajo. Serve pasta immediately with desired toppings.\n'
          ),

        ],

      ),
    );
  }
}


class Recipe3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Page:)'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage('assets/Pizza_Margherita.jpg'),
          ),
          Text(
            'Pizza Margherita',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
              'Step 1:\n'+
                  'Place a pizza stone or tiles on the middle rack of your oven and turn heat to its highest setting. Let it heat for at least an hour.\n' +
                  'Step 2:\n'
                      'Put the sauce in the center of the stretched dough and use the back of a spoon to spread it evenly across the surface, stopping approximately 1/2 inch from the edges.\n'
                      'Step 3:\n'
                  'Drizzle a little olive oil over the pie. Break the cheese into large pieces and place these gently on the sauce. Scatter basil leaves over the top.\n'
                      'Step 4:\n'
                  'Using a pizza peel, pick up the pie and slide it onto the heated stone or tiles in the oven. Bake until the crust is golden brown and the cheese is bubbling, approximately 4 to 8 minutes.'
          ),

        ],

      ),
    );
  }
}


