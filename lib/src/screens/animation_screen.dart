import 'package:flutter/cupertino.dart';
import 'dart:math';
 
class AnimationScreen extends StatefulWidget {
@override
  _AnimationState createState() => _AnimationState();
}

class _AnimationState extends State<AnimationScreen> {
  // Define the various properties with default values. Update these properties
  // when the user taps a FloatingActionButton.
  double _width = 50;
  double _height = 50;
  Color _color = CupertinoColors.systemGreen;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Animation Container'),
        ),
        child: Center(
          child: Container(
            margin:EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 300,
                  child: AnimatedContainer(
                    width: _width,
                    height: _height,
                    decoration: BoxDecoration(
                      color: _color,
                      borderRadius: _borderRadius,
                    ),
                    duration: Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn, 
                  ),
                ),
                
                Container(
                  width: 50,
                  height: 50,
                  child: CupertinoButton.filled(
                    padding: EdgeInsets.all(15),
                          child: Icon(CupertinoIcons.play_arrow, size: 20.0,), 
                          onPressed:(){
                             setState(() {
                              // Create a random number generator.
                              final random = Random();

                              // Generate a random width and height.
                              _width = random.nextInt(300).toDouble();
                              _height = random.nextInt(300).toDouble();

                              // Generate a random color.
                              _color = Color.fromRGBO(
                                random.nextInt(256),
                                random.nextInt(256),
                                random.nextInt(256),
                                1,
                              );

                              // Generate a random border radius.
                              _borderRadius =
                                  BorderRadius.circular(random.nextInt(100).toDouble());
                            });
                          }
                        ),
                ),
                
                

              ],
            ),
            
          ),
        ),
        
        

      );
  }

  
}


 