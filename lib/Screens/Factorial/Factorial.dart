
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Factorial extends StatefulWidget {
  const Factorial({super.key});

  @override
  State<StatefulWidget> createState() => _FactorialState();
}

class _FactorialState extends State<Factorial> {
  int i = 0;
  var txtctrlNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('Factorial')),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Text(
                "$i! = ${calfact(i)}",
                textDirection: TextDirection.ltr,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: txtctrlNumber,
                textDirection: TextDirection.ltr,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "Number",
                  hintText: "Please enter a number to find factorial",
                ),
              ),

              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      i = int.parse(txtctrlNumber.text);
                    });
                  },
                  child: Text("Calculate")),
              // TextButton(onPressed: onPressed, child: child)
            ],
          ),
        ));
  }

  calfact(int a) {
    int ans = 1;
    for (int i = 1; i <= a; i++) {
      ans *= i;
    }
    return ans;
  }
}
