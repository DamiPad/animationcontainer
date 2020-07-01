import 'package:flutter/cupertino.dart';
import 'package:widgets_explorer_app/src/routes/routes.dart';
import 'package:widgets_explorer_app/src/screens/action_sheet_screen.dart';
import 'package:widgets_explorer_app/src/screens/animation_screen.dart';
import 'package:widgets_explorer_app/src/screens/card_screen.dart';
import 'package:widgets_explorer_app/src/screens/widgets_screen.dart';
 
 
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            title: Text('Widgets')
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.play_arrow),
              title: Text('Animation')
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.share_up),
              title: Text('Cards')
          )
        ],//contiene una lista
      ), 
      tabBuilder: (context,index){//como construir y como lojar
        //index ordinal base cero que indica que tab esta seleccionado o marcado
        return CupertinoTabView(
          routes: getApplicationRoutes(),
          builder: (context){
            switch(index){
              case 0:
                return WidgetsScreen();
                break;
              case 1:
                return AnimationScreen();
                break;
              case 2:
                return CardScreen();
                break;
            }
            return WidgetsScreen();
          }
        );
      }
    );
  }
}


 