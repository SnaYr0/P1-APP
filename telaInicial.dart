import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/cadastro.dart';
import 'package:untitled/login.dart';

class telaInicial extends StatefulWidget {

  @override
  _telaInicialState createState() => _telaInicialState();

}

Widget build(BuildContext context) => Scaffold(
  body: Center(child: Text('Inicial', style: TextStyle(fontSize: 60))),
  bottomNavigationBar: BottomNavigationBar(
    //currentIndex: ,
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.man), label: 'Perfil'),
      BottomNavigationBarItem(icon: Icon(Icons.star),label: 'Busca'),

    ],
  ),
);

class _telaInicialState extends State<telaInicial> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
        child: Stack(
          children: <Widget>[
            Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
                colors: [
                  Color(0xB41C7FD2),
                  Color(0xB4248EB4),
                  Color(0xB4396DA1),
                  Color(0xB40E60B1),
              ]
            )
          ),
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 120
                  ),
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Open UNIFEOB',
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            )
                            ),
                          ],
                        )
                    )
                  )
              ]
          )
        )
      )
    );
  }
}
