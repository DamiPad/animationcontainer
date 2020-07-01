import 'package:flutter/cupertino.dart';
 
 
class CardScreen extends StatelessWidget {
  const CardScreen({Key key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Card Container'),
        ),
        child: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      );
  }
}


 