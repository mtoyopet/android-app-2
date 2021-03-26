import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard()
));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  
  int ninjaLevel = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/momoko_avatar.jpeg'),
              )
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2
              )
            ),
            SizedBox(height: 10),
            Text(
              'Momoko Toyota',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 20,
                fontWeight: FontWeight.bold
              )
            ),
            SizedBox(height: 30),
            Text(
                'CURRENT LEVEL',
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2
                )
            ),
            SizedBox(height: 10),
            Text(
                '${ninjaLevel}',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                )
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey
                ),
                SizedBox(width: 5),
                Text(
                  'mtoyota0115@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                    letterSpacing: 1.0
                  )
                )
              ]
            )
          ]
        )
      )
    );
  }
}
