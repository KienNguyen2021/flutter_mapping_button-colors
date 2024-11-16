import 'package:flutter/material.dart';

/// Flutter code sample for [FloatingActionButton].

void main() => runApp(const FloatingActionButtonExampleApp());

class FloatingActionButtonExampleApp extends StatelessWidget {
  const FloatingActionButtonExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const FloatingActionButtonExample(),
    );
  }
}

class FloatingActionButtonExample extends StatelessWidget {
  const FloatingActionButtonExample({super.key});

  @override
  Widget build(BuildContext context) {

    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    Widget titleBox(String title) {
     
      return DecoratedBox(        // button box, and title name box
        decoration: BoxDecoration(
          color: colorScheme.inverseSurface,
          borderRadius: BorderRadius.circular(15),
                           ),
             child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                     child: Text(title, style: TextStyle(color: colorScheme.onInverseSurface)),
                     ),
                );
      }

    return Scaffold(

           appBar: AppBar(
                title: const Text('Additional Color Mappings'),
               backgroundColor: Colors.blue,
            ),
    
         body: Center(
             child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  
                  children: <Widget>[
                        Column(                 // First color mapping, middle box
                        mainAxisSize: MainAxisSize.min,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                                FloatingActionButton.large(
                                 foregroundColor: colorScheme.primary,
                             //backgroundColor: colorScheme.surface,
                               backgroundColor: Colors.red,        // first left box
                              onPressed: () {
                                  // Add your onPressed code here!
                                    },
                                 child: const Icon(Icons.computer_outlined),      //Icon inside button
                            ),
               
                const SizedBox(height: 20),
                titleBox('Surface'),
              ],
            ),
          
          
            // Secondary color mapping, middle box
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                FloatingActionButton.large(
                  foregroundColor: colorScheme.onSecondaryContainer,
                  backgroundColor: colorScheme.secondaryContainer,
                  onPressed: () {
                    // Add your onPressed code here!
                  },
                  child: const Icon(Icons.edit_outlined),
                ),
                const SizedBox(height: 20),
                titleBox('Secondary'),
              ],
            ),
            // Tertiary color mapping.
         
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                FloatingActionButton.large(
                  foregroundColor: colorScheme.onTertiaryContainer,
                  backgroundColor: colorScheme.tertiaryContainer,
                  onPressed: () {
                    // Add your onPressed code here!
                  },

                  child: const Icon(Icons.edit_outlined),
                   
                           ),


                const SizedBox(height: 20),
                titleBox('Tertiary'),
                   ],


            ),
          ],
        ),
      ),
    );
  }
}
