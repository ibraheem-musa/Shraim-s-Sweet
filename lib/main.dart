import 'package:first_app_for_test/widget/Splash_Screen.dart';
import 'package:first_app_for_test/provider/drawerprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:first_app_for_test/applocal.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences sharedPreferences;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
   runApp(MyApp());
}
class MyApp extends StatefulWidget {
  
  const MyApp({  key }) : super(key: key);
 static void setLocale(BuildContext context, Locale newLocale) {
   
    MyAppState state = context.findAncestorStateOfType<MyAppState>();
    state.setLocale(newLocale);
    
  }

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

    Locale _locale;
  setLocale(Locale locale) {
    setState(() {
     _locale = locale ;
    });
  }
 

 

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
             ChangeNotifierProvider.value( value: DrawerProvider(),),

    ], child:
    
    MaterialApp(
      debugShowCheckedModeBanner: false,

      supportedLocales: [
        Locale('en', ''),
        Locale('fr', ''),
       
      ],
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,

      ],
  
        localeResolutionCallback: (currentLang , supportLang){
        if(currentLang != null){
          for(Locale local in supportLang){
            if(local.languageCode == currentLang.languageCode){
               sharedPreferences.setString("lang",currentLang.languageCode) ;
              print(currentLang.languageCode);
              return currentLang;
            }
          }
        }
        return supportLang.first;
      },
        locale: _locale,

      home:Splash(),
      
      
      ));
  }
}