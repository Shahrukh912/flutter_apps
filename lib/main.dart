import 'package:flutter/material.dart';
import 'package:flutter_apps/Screens/GoogleWebpage/GoogleWebpage.dart';

import 'Screens/Factorial/Factorial.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Apps",
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i = 0;
  var txtctrlNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //this list holds all the screen you want to show on main page
    List<ScreensHolder> items = <ScreensHolder>[];
    items.add(ScreensHolder(Icon(Icons.ac_unit),"Factorial", "Find factorial for the given number", Factorial()));
    items.add(ScreensHolder(Icon(Icons.cloud), "Google", "Displays google homepage with the help of webview", GoogleWebpage()));

    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('All Apps')),
        body: ListView.separated(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: items[index].icon,
              title: Text(items[index].title),
              subtitle: Text(items[index].subtitle),
              trailing: TextButton(
                child: Icon(Icons.navigate_next),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => items[index].nextScreen as Widget),
                  );
                      // Factorial() as Route<Object?>);
                },
              )

            );
          }, separatorBuilder: (BuildContext context, int index) => const Divider(),
        )
    );
  }


}

class ScreensHolder {
  Icon icon;
  String title;
  String subtitle;
  Object nextScreen;

  ScreensHolder(this.icon,this.title,this.subtitle,this.nextScreen);

}
