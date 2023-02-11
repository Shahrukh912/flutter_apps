import 'package:flutter/material.dart';

import 'Screens/Factorial/Factorial.dart';

void main() {
  runApp(MaterialApp(
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
    List<ScreensHolder> items = <ScreensHolder>[];
    items.add(ScreensHolder(Icon(Icons.ac_unit),"Factorial", "Find factorial for the given number", Factorial()));

    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('Factorial')),
        body: ListView.builder(
          itemCount: items.length,
          prototypeItem: ListTile(
            title: Text("hi not sure what is this"),
          ),
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
          },
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
