import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Home(),
  )
  );
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  TextEditingController num1 = new TextEditingController();
  TextEditingController num2 = new TextEditingController();
  String result ='';
  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      title: Text('Add Two Number '),
      centerTitle: true,
      backgroundColor: Colors.blue,

    ),
    body: Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [

          Padding(padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter First number',
              ),
              keyboardType: TextInputType.number,
              controller: num1,
            ),
          ),

          Padding(padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Second number',
              ),
              keyboardType: TextInputType.number,
              controller: num2,
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            child: Text('ADD'),
            onPressed: (){
              setState((){
                int sum = int.parse(num1.text) + int.parse(num2.text);
                result = sum.toString();
              });
            },
          ),
          SizedBox(height: 15),
          new Text('Sum is '+result,
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 30,

            ),),
          SizedBox(height: 15),
          new Text('Name = Nahom Ketema \n  Section = 2   year = 4 ',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 25,

            ),),
        ],
      ),
    ),
    );
  }
}