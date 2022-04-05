import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/login.dart';
import 'package:untitled/telaInicial.dart';

class cadastro extends StatefulWidget {

  @override
  _cadastroState createState() => _cadastroState();
}

Widget buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Email',
        style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold
        ),
      ),
      SizedBox(height: 10),
      Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xff5675a1),
                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          )
      )
    ],
  );
}

Widget buildSenha() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Senha',
        style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold
        ),
      ),
      SizedBox(height: 10),
      Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xff5675a1),
                ),
                hintText: 'Senha',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          )
      )
    ],
  );
}

Widget buildRepitaSenha() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Repita sua Senha',
        style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold
        ),
      ),
      SizedBox(height: 10),
      Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xff5675a1),
                ),
                hintText: 'Repita sua senha',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          )
      )
    ],
  );
}

Widget buildbtnLogin() {
  return Container(
    child: Column(
      children: [
        ElevatedButton(onPressed: (){},
          child: Text('Entrar'),
          style: ElevatedButton.styleFrom(),
        ),
      ],

    ),
  );
}

class _cadastroState extends State<cadastro> {

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
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 100),
                                  Text(
                                    'Cadastre-se',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 70),
                                  buildEmail(),
                                  SizedBox(height: 40),
                                  buildSenha(),
                                  SizedBox(height: 40),
                                  buildRepitaSenha(),
                                  SizedBox(height: 60),
                                  ButtonTheme(
                                      height: 20,
                                      buttonColor: Colors.white,
                                      child: ElevatedButton(
                                          onPressed: () => {Navigator.of(context).push(
                                            MaterialPageRoute(builder: (context) => login()),
                                          )}, child: Text('Cadastrar',
                                        style: TextStyle(color: Colors.black, fontSize: 25),
                                      )
                                      )
                                  )
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