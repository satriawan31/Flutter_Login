import 'package:flutter/material.dart';
import 'package:tugas_1/Login.dart';
import 'package:tugas_1/Register.dart';


class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {


  createAlertDialog(BuildContext context){
   return showDialog(context: context,builder:(context){
     return AlertDialog(
       title: Text("Apakah Mau aktifkan GPS"),
       actions: [
         MaterialButton(
           color:Colors.green[300],
           elevation: 6.0,
           child: Text("YES"),
           onPressed: (){
             Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Login() ));
           },
         ),
         MaterialButton(
           color: Colors.green[300],
           elevation: 6.0,
           child: Text("NO"),
           onPressed: (){
             Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Login() ));
           },
         )
       ],
     );
   });
 }


  createAlertDialog1(BuildContext context){
   return showDialog(context: context,builder:(context){
     return AlertDialog(
       title: Text("DAFTAR SEBAGAI",
       textAlign: TextAlign.center,),
       actions: [
         MaterialButton(
           color:Colors.green[300],
           elevation: 5.0,
           child: Text("BALITA/ANAK"),
           onPressed: (){
             Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>Register()));
           },
         ),
         MaterialButton(
           color: Colors.green[300],
           elevation: 5.0,
           child: Text("TENAGA KESEHATAN"),
           onPressed: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>Register()));
           },
         )
       ],
     );
   });
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100,),
              Text("Welcome",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
              ),
              ),
              SizedBox(height: 90.0,),
              Text("E-POSYANDU ",
              textAlign: TextAlign.center,
              style: TextStyle(color:Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 50.0),),
              SizedBox(height: 90.0,),
              new RaisedButton(
                color: Colors.white,
                shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
               ),
               padding: new EdgeInsets.all(16.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   new Text(
                     "LOGIN", style: TextStyle(color: Colors.green,
                     fontSize:20.0,
                     fontWeight:FontWeight.bold
                     ),
                     ),
                 ],
               ),
                onPressed: (){
                   createAlertDialog(context);
                 },
              ),
               Divider(),
                 new RaisedButton(
                 color:Colors.white,
                 shape:new RoundedRectangleBorder(
                   borderRadius:BorderRadius.circular(5),),
                   padding: new EdgeInsets.all(16.0),
                 child:Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                   new Text("REGISTER",style:TextStyle(color:Colors.green,
                   fontSize:18.0,
                   fontWeight:FontWeight.bold),)
                 ],),
                 onPressed: (){
                   createAlertDialog1(context);
                 },
               ),
               FlatButton(
                 child:Text("LUPA PASSWORD?",
                 style: TextStyle(color:Colors.white,
                 fontSize:18,
                 fontWeight:FontWeight.bold),),
                 onPressed: (){},
               )
            ],
          ),
      ),
      )
    );
  }
}