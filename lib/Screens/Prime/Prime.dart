import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Prime extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PrimeState();
  }

}

class _PrimeState extends State<Prime> {
  final tcNumber = TextEditingController();
  String ans = "";
  List<int> primes = <int>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(30.0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    gradient:  LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [
                        0.1,
                        0.9,
                      ],
                      colors: [
                        Colors.blue,
                        Colors.red,
                      ],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                      Text("Hi Shahrukh!",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          )
                      ),
                      Icon(Icons.save_alt,
                          color: Colors.white),
                  ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30.0),
                  decoration: const BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Center(
                      child: Text("$ans",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                  ),

                ),
                const SizedBox(height: 20,),

                //Text feild
                TextField(
                  controller: tcNumber,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20),
                    ), 
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    hintText: "Enter number",
                    hintStyle: TextStyle(color:Colors.white),
                  ),


                )


              ],
          ),
          ),
        )
    );
  }

}