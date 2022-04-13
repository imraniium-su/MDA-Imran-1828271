import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Imran-1828271- Assignment-1',
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
    home: Scaffold(
      appBar: AppBar(title: Text('Imran-1828271- Assignment-1'),),
      backgroundColor: Colors.grey[300],
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String text = '';

  bool _secure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                hintText: 'Please enter your number',
                labelText: 'please type your number',
                labelStyle: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 18
                ),
                hintStyle:  TextStyle(
                    color: Colors.black,
                    fontSize: 18
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: Icon(Icons.account_circle),
                suffixIcon: IconButton(
                  icon:Icon(_secure?Icons.remove_red_eye:Icons.security),
                  onPressed: (){
                    setState(() {
                      _secure = !_secure;
                    });
                  },

                ),
                errorText: text.isEmpty?'Empty':null
            ),
            keyboardType: TextInputType.number,
            obscureText: _secure,
            obscuringCharacter: '*',
            maxLength: 14git,
            //maxLines: 2,
            onChanged: (value){
              text = value;
            },
            onSubmitted: (value){
              setState(() {
                text = value;
              });

              print(value);
            },
          )
        ],
      ),
    );
  }
}