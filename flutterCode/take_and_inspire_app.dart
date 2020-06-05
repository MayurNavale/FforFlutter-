import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
void main()=>runApp(App());
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      //theme: kThemeData,
      home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('First Route'),
      ),
      body: Center(
        child: SignUpScreen(),
      ),
    );
  }
}


class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select option"),
      ),
      body: Container(
        decoration: new BoxDecoration(color: Colors.purple[700]),
        child:Center(
          child: Column(
            children:[
              FlatButton(
                color:Colors.yellow,
                child: Text('Catrure Image'),
                textColor:Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FirstRoute()),
                  );
                },

              ),
              FlatButton(
                color:Colors.yellow,
                child: Text('Select Thought'),
                textColor:Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomeScreen()),
                  );
                },

              ),
              FlatButton(
                color:Colors.yellow,
                child: Text('Create ImageThought'),
                textColor:Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdRoute()),
                  );
                },

              ),

            ],
          ),
        ),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.blue,
        child: Column(

            mainAxisSize: MainAxisSize.min,
            children:[
              Expanded(
                  flex:9,
                  child:Container(
                    margin:EdgeInsets.all(10),
                    padding:EdgeInsets.all(10),
                    alignment:Alignment.topCenter,
                    width:600,
                    height:700,
                    decoration:BoxDecoration(
                        color :Colors.blue[100],
                        border:Border.all(),
                        borderRadius: BorderRadius.all(Radius.circular(4.0))
                    ),
                    child:null,
                  )


              ),
              Expanded(
                flex:1,
                child:Container(
                  //color: Colors.green,

                  child:Row(
                    children:[
                      Container(
                        margin:EdgeInsets.all(4),
                        child:FlatButton(
                          color: Colors.blue[100],
                          textColor: Colors.black,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          padding: EdgeInsets.all(2.0),

                          splashColor: Colors.blueAccent,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FifthRoute()),
                            );
                          },
                          child: Text(
                            "Pest Thought",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                      ),
                      Container(
                        margin:EdgeInsets.all(4),
                        child:FlatButton(
                          color: Colors.blue[100],
                          textColor: Colors.black,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          padding: EdgeInsets.all(2.0),

                          splashColor: Colors.blueAccent,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FifthRoute()),
                            );
                          },
                          child: Text(
                            "Save",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                      ), Container(
                        margin:EdgeInsets.all(4),
                        child:FlatButton(
                          color: Colors.blue[100],
                          textColor: Colors.black,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          padding: EdgeInsets.all(2.0),

                          splashColor: Colors.blueAccent,

                            // Within the `FirstRoute` widget
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => FifthRoute()),
                              );
                            },


                          child: Text(
                            "Share",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                      ),

                    ],

                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}


class FifthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("third  Route"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Go back!'),
          onPressed: () {


              Navigator.pop(context);
            }



        ),
      ),
    );
  }
}

class SignUpScreen extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(

      body:Center(
        child: SizedBox(
          width:400,
          child:Card(
            child:SignUpForm(),
          ),
        ),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget{
  _SignUpFormState createState()=> _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm>{
  final _firstNameTextController=TextEditingController();
  final _lastNameTextController=TextEditingController();
  final _usernameTextController=TextEditingController();
  double _formProgress=0;

  Widget build(BuildContext context ){
    return Form(
      onChanged: () => _updateFormProgress(), // NEW
      child:Container(
        decoration: new BoxDecoration(color: Colors.blue[100]),
        child:Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedProgressIndicator(value: _formProgress), // NEW
            Text('Sign Up', style: Theme.of(context).textTheme.headline4),
            Padding(
              padding:EdgeInsets.all(8),
              child:TextFormField(
                controller:_firstNameTextController,
                decoration:InputDecoration(hintText:'first Name'),),
            ),
            Padding(
              padding:EdgeInsets.all(8),
              child:TextFormField(
                controller:_lastNameTextController,
                decoration:InputDecoration(hintText:'last Name'),),
            ),
            Padding(
              padding:EdgeInsets.all(8),
              child:TextFormField(
                controller:_usernameTextController,
                decoration:InputDecoration(hintText:'Username '),),
            ),
            RaisedButton(
              //color:Colors.blue,
              child: const Text('Sign In',
                style:TextStyle (
                    fontSize:29,  color:Colors.blue),
              ),
              //color:Colors.blue
              elevation: 9,
              onPressed: _formProgress == 1 ? _showWelcomeScreen : null,


            ),
          ],
        ),
      ),
    );
  }
  void _showWelcomeScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondRoute()),
    );
  }

  void _updateFormProgress() {
    var progress = 0.0;
    var controllers = [
      _firstNameTextController,
      _lastNameTextController,
      _usernameTextController
    ];

    for (var controller in controllers) {
      if (controller.value.text.isNotEmpty) {
        progress += 1 / controllers.length;
      }
    }

    setState(() {
      _formProgress = progress;
    });
  }


}

class AnimatedProgressIndicator extends StatefulWidget {
  final double value;

  AnimatedProgressIndicator({
    @required this.value,
  });

  @override
  State<StatefulWidget> createState() {
    return _AnimatedProgressIndicatorState();
  }
}

class _AnimatedProgressIndicatorState extends State<AnimatedProgressIndicator>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Color> _colorAnimation;
  Animation<double> _curveAnimation;

  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: Duration(milliseconds: 1200), vsync: this);

    var colorTween = TweenSequence([
      TweenSequenceItem(
        tween: ColorTween(begin: Colors.red, end: Colors.orange),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: ColorTween(begin: Colors.orange, end: Colors.yellow),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: ColorTween(begin: Colors.yellow, end: Colors.green),
        weight: 1,
      ),
    ]);

    _colorAnimation = _controller.drive(colorTween);
    _curveAnimation = _controller.drive(CurveTween(curve: Curves.easeIn));
  }

  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.animateTo(widget.value);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) => LinearProgressIndicator(
        value: _curveAnimation.value,
        valueColor: _colorAnimation,
        backgroundColor: _colorAnimation.value.withOpacity(0.4),
      ),
    );
  }
}


class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Thought'),
      ),
      body: createwidget1(),

    );
  }
}

Widget createwidget1(){
  return Container(
    decoration: new BoxDecoration(color: Colors.purple[300]),
    child: ListView(
      children: <Widget>[

        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('“The future depends on what we do in the present.” – Mahatma Gandhi'),
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('“Winning doesn’t always mean being first. Winning means you’re doing better than you’ve done before.” — Bonnie Blair'),
        ),

        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('Never give up something that you really want. It is difficult to wait, but more difficult to regret.'),
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('“I never dreamed about success. I worked for it.” – Estee Lauder'),
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('Do not give up, the beginning is always the hardest.'),
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('“Success is the sum of small efforts, repeated day in and out.” – Robert Collier'),
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('Mistakes are proof that you are trying.'),
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('“Choose a job you love, and you will never have to work a day in your life.” – Confucius'),
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('Fall seven times, stand up eight. – Japanese proverb'),
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('“Go confidently in the direction of your dreams. Live the life you have imagined.” Henry David Thoreau'),
        ),


      ],
    ),

  );
}

class FirstRoute extends StatefulWidget {
  @override
  _FirstRoute createState() => _FirstRoute();
}

class _FirstRoute extends State<FirstRoute
> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _image = File(pickedFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Example'),
      ),
      body: Center(
        child: _image == null
            ? Text('No image selected.')
            : Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}
