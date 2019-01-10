import 'package:flutter/material.dart';


class StartPage extends StatefulWidget {
  StartPage({Key key, this.title}) : super(key: key);

 
  final String title;

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {


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
                    fit: BoxFit.contain
                  )
                ),          
              ),
            );
  }

   _foreground() {

    return  Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 0),
        appBar: AppBar(
          
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: _chapters(),
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ); 
      
  }

_chapters()  {

 var widg = [
      Text('Chapters'),
      
      
    ];
 return widg;
}


}


