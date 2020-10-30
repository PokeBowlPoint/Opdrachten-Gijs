import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() {
  runApp(MaterialApp(
    title: 'Open window opdracht',
    home: FirstRoute(),
  ));
}

class EmailFieldValidator {
  static String validate(String value) {
    return value.isEmpty ? 'Email can\'t be empty' : null;
  }
}

class PasswordFieldValidator {
  static String validate(String value) {
    return value.isEmpty ? 'Password can\'t be empty' : null;
  }
}

String _emailfield;
String _passwordfield;

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Container(
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            Container(
              child: RaisedButton(
                child: Text('Open route 2'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                },
              ),
            ),
            Container(
              child: RaisedButton(
                child: Text('Open route 3'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdRoute()),
                  );
                },
              ),
            ),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email'
                ),
                validator: EmailFieldValidator.validate,
                onSaved: (value) => _emailfield = value,
              ),
            ),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Password'
                ),
                validator: PasswordFieldValidator.validate,
                onSaved: (value) => _passwordfield = value,
              ),
            ),
          ],
        )
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Container(
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: <Widget>[
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Ga terug'),
                ),
              ),
            ],
          )
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Route"),
      ),
      body: Container(
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: <Widget>[
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Ga naar route 1'),
                ),
              ),
            ],
          )
      ),
    );
  }
}
