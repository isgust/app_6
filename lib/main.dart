import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:device_preview/device_preview.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      title: 'AppBar Demo',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('pt', 'BR'),
      ],
      home: const MyStaticPage(), // Use MyStaticPage as the home
    );
  }
}

class MyStaticPage extends StatelessWidget {
  const MyStaticPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Image.asset(
        'assets/images/imageBack.png',
        height: 320,
        width: 320,
      ),
      Text(
        'Love\'s love affinity with Calculator is',
        style: TextStyle(fontSize: 22, color: const Color.fromARGB(255, 164, 164, 164)),
        textAlign: TextAlign.center,
      ),
      SizedBox(height: 20),
      Text(
        '60%',
        style: TextStyle(fontSize: 30, color: const Color.fromARGB(255, 245, 72, 76), fontWeight: FontWeight.bold,),
      ),
      SizedBox(height: 20),
      Center(
        child: Text(
          'Good! You should work more on your relationship',
          style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 164, 164, 164)),
          textAlign: TextAlign.center,
        ),
      ),
      SizedBox(height: 25),
      SizedBox(
        width: 300.0,
        height: 50.0,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255,253,252,250), 
            backgroundColor: const Color.fromARGB(255,254,78,80), 
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
            ),
          ),
        child: Text('Recalcular!'),
        ),
      ),
    ],
  ),
)

    );
  }
}

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(),
    ),
  );
}
