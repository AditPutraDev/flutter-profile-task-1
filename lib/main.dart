import 'package:flutter/material.dart';
import 'package:task1_flutter/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'My Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isChecked = false;
  bool _isCheckeds = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(Icons.settings),
          )
        ],
        title: Text(widget.title),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        children: [
          Column(
            children: [
              CircleAvatar(maxRadius: 80),
              SizedBox(height: 16),
              Text("Bartek Pacia")
            ],
          ),
          TextFormField(
            decoration: InputDecoration(labelText: "Username"),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: "Email"),
          ),
          CheckboxListTile(
            activeColor: Colors.greenAccent,
            title: const Text("Available to mentor"),
            value: _isChecked,
            onChanged: (bool value) {
              setState(() {
                _isChecked = value;
              });
            },
          ),
          CheckboxListTile(
            activeColor: Colors.greenAccent,
            title: const Text("Needs mentoring"),
            value: _isCheckeds,
            onChanged: (bool value) {
              setState(() {
                _isCheckeds = value;
              });
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: "Bio"),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: "Slack username"),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: "Location"),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: "Occupation"),
          ),
          SizedBox(height: 24),
          SizedBox(
            height: 45,
            width: 250,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              color: Colors.purple,
              child: Text(
                "Register",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SignUpPage()));
              },
            ),
          ),
          SizedBox(height: 90),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => SignUpPage()));
        },
        tooltip: 'Edit',
        child: Icon(Icons.edit),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
