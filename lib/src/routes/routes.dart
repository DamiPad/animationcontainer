import 'package:flutter/cupertino.dart';
import 'package:widgets_explorer_app/src/screens/action_sheet_screen.dart';
import 'package:widgets_explorer_app/src/screens/home_screens.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
    '/':(BuildContext context) => HomeScreen(),
    '/actionsheet':(BuildContext context) => ActionSheetScreen(),
    

  };

}