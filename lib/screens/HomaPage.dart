import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

 
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    
    return Stack(
        
          children:<Widget> [
            _background(),
             _foreground(),

          ],
    );
  }

  _background() {
    return Scaffold(
              backgroundColor: Color.fromRGBO(255, 255, 255, 0.5),
              body: Container(
                
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/qbg.png"),
                    fit: BoxFit.fill,

                  )
                ),          
              ),
            );
  }

   _foreground() {

    return  Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 0),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 0, 0, 0.3),
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: _formItemsArray(),
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ); 
      
  }

_formItemsArray()  {

 var widg = [
   Padding(padding: EdgeInsets.only(top: 0.0),),
   GoogleSignInButton(onPressed: _authenticateGoogle,text: 'Continue with Google',),
  //  GoogleSignInButton(onPressed: () {}, darkMode: true),
   FacebookSignInButton(onPressed: _authenticateFacebook,text: 'Continue with Facebook',),
   TwitterSignInButton(onPressed: _authenticateTwitter,text: 'Continue with Twitter',),
      
    ];
 return widg;
}

_authenticateGoogle(){
  print( "Google Authenticate started...");
}
_authenticateFacebook(){
  print( "Facebook Authenticate started...");
}
_authenticateTwitter(){
  print( "Twitter Authenticate started...");
}


}


