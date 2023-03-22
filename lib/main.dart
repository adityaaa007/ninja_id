import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaId(),
  ));
}

class NinjaId extends StatefulWidget {
  @override
  State<NinjaId> createState() => _NinjaIdState();
}

class _NinjaIdState extends State<NinjaId> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID'),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        elevation: 0.00,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        backgroundColor: Colors.cyan,
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/graphic.jpg'),
                radius: 50,
              ),
            ),
            Divider(
              height: 50,
              color: Colors.grey[800],
            ),
            Text('NAME',style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0
            ),),
            SizedBox(
              height: 10,
            ),
            Text('Aditya',style: TextStyle(
              color: Colors.cyan,
              letterSpacing: 2.0,
              fontSize: 28,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 30,
            ),Text('LEVEL',style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0
            ),),
            SizedBox(
              height: 10,
            ),
            Text('$counter',style: TextStyle(
                color: Colors.cyan,
                letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(Icons.email,color: Colors.grey,),
                SizedBox(
                  width: 10,
                ),
                Text('aditya.orpl@gmail.com',style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 1.0
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
