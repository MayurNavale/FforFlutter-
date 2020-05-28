import 'package:flutter/material.dart';

void main()=>runApp(SignUpApp());


class SignUpApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
    routes:{
      '/':(context)=>SignUpScreen(),
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
  onPressed:(){
    _navigatortosecondpage(context);
        },
    

         ),
        ],
     ),
    );
  }
  void _navigatortosecondpage(BuildContext context){
    Navigator.push(
    context,
    MaterialPageRoute(
    builder:(context)=>SecondScreen(),
    )
    );
  }
}

 class SecondScreen extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(
        title:Text('page2'),
          ),
        body:Center(
        child:RaisedButton(
        child:Text('press here to go back'),
          onPressed:(){
            _navigatortohomepage(context);
          },
      ),
    ),
      );
  }
    void  _navigatortohomepage(BuildContext context){
      Navigator.pop(context);
    }
 
  }

   
    
