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
  final _usernameNameTextController=TextEditingController();
   double _formProgress=0;
  
  Widget build(BuildContext context ){
    return Form(
    child : Column(
      mainAxisSize:MainAxisSize.min,
      children:[
       LinearProgressIndicator(value:_formProgress),
        Text('Sign Up',style:TextStyle(fontSize:20)),
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
          controller:_usernameNameTextController,
          decoration:InputDecoration(hintText:'Username '),),
          ),
        RaisedButton(
          //color:Colors.blue,
  child: const Text('Sign In',
             style:TextStyle (
               fontSize:29,  color:Colors.blue),
                    ),
  //color:Colors.blue,
  elevation: 9,
  onPressed:_showWelcomeScreen,
    

         ),
        ],
     ),
    );
  }
  void _showWelcomeScreen() {
  Navigator.of(context).pushNamed('/welcome');
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
        child:Icon(Icons.home ),
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
