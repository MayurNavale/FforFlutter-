import 'package:flutter/material.dart';

void main()=>runApp(SignUpApp());


class SignUpApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
    routes:{
      '/':(context)=>SignUpScreen(),
     '/welcome': (context) => WelcomeScreen(),

    }
    );
  }
}

class SignUpScreen extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.grey[200],
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
  child: Column(
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
    );
  }
  void _showWelcomeScreen() {
  Navigator.of(context).pushNamed('/welcome');
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
     title:Text('27 may 2020'),
     ),
      body: createwidget1(),
        
    );
  }
}

Widget createwidget1(){
  return Container(
  margin:EdgeInsets.all(30),
    padding:EdgeInsets.all(10),
    alignment:Alignment.topCenter,
   width:600,
   // height:200,
    decoration:BoxDecoration(
    color :Colors.purple[900],
      border:Border.all(),
       borderRadius: BorderRadius.all(Radius.circular(4.0))
    ),
    child:insidecontainer(),
  );
  
}

Widget insidecontainer(){
  return Column(
    mainAxisSize: MainAxisSize.min,
    children:[
      Expanded(
      flex:2,
      child:container1(),
      ),
      Expanded(
      flex:6,
      child:container2(),
      ),
      Expanded(
      flex:2,  
      child:container3(),
      ),
    ],
  );
}


Widget container1(){
 return  Container(
   //color: Colors.green,
   
    child:Row(
   children:[
     Padding(
        padding: EdgeInsets.all(8.0),
        child:Icon(Icons.home),
         ),
     Text('Stateless widgets' ,style: TextStyle(
          fontSize: 20.0 ,color: Colors.white ),),
      ],
     
    ),
   );
}

Widget container2(){
 return  Padding(
        padding: EdgeInsets.all(8.0),
        child:Text('    Stateless widgets are widgets that dont store any state. That is they dont store values that might change. \n    For example Icon is stateless.the icon is also stateless widget .,',style: TextStyle(
          fontSize: 14.0 ,color: Colors.white )
                  ),
                );
             }

Widget container3(){
 return  Container(
  // color: Colors.green,
   child:Row(
   children:[
   
     
     Padding(
        padding: EdgeInsets.all(8.0),
        child:Text(' NEXT : Statefull widgets ', style: TextStyle(
          fontSize: 12,color: Colors.blue )),
            ),
     FlutterLogo(
        size: 30.0,
     
       ),
     
      ],  
     ),
   );
  
}
