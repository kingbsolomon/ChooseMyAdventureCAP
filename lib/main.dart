import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(new EntryWay());
}

class EntryWay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Choose My Adventure',
      theme: new ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        primaryColor: Colors.deepPurple,
        accentColor: const Color(0xFF64ffda),
        canvasColor: const Color(0xFF303030),
        fontFamily: 'Anton-Regular',
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Choose My Adventure'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegistrationForm(
                      )),
                      );
                      },
                    color: Colors.deepPurple,
                    child: Text('Login'),
                  ),
                ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        onPressed: () {},
                        color: Colors.deepPurple,
                        child: Text('Register'),
                      ),
                ]),
                ]),
            );
  }
}

class RegistrationForm extends StatefulWidget{
  @override
  RegistrationFormState createState(){
    return RegistrationFormState();
  }
}
//apparently new is not needed
class RegistrationFormState extends State<RegistrationForm>{
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Registration'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.close,
            ),
              onPressed: (){
                Navigator.pop(context,
                MaterialPageRoute(builder: (context)=> HomePage(
                )));
              })
        ],

      ),
      body: Container(
        child: Form(
                key:_formKey,
                  child:
                      ListView(
                          children:[
                            TextFormField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                                hintText: 'Full Name',
                                labelText: 'Enter your name:'
                            ),
                          ),
                            TextFormField(
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  hintText: 'User Name',
                                  labelText: 'Enter A UserName:'
                              ),
                            ),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  hintText: 'you@example.com',
                                  labelText: 'E-mail Address:'
                              ),
                            ),
                            TextFormField(
                              obscureText:true,
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  labelText: 'Enter a password'
                              ),
                            ),
                          ],
                       ),






                  ),
          ),

      );
  }
}




