import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

callAction(){}
mapAction(){}
shareAction(){}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Meu Primeiro APP")),
            body: Column(
              children: [
                Column(
                  children: [Image(image: AssetImage("assets/muro.jpg"))],
                ),
                Container(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Kotel",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            Text(
                              "Jerusalem, Israel",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                            )
                          ],
                        )),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.blue,
                            ),
                            Text(" 9,785")
                          ],
                        )
                      ],
                    )),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(children: [
                    Button(onPress: callAction(), icon: Icons.call, text: "Ligar"),
                    Button(onPress: mapAction(), icon: Icons.location_on, text: "Mapa"),
                    Button(onPress: shareAction(), icon: Icons.share, text: "Compartilhar"),
                  ]),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "O Muro das Lamentações ou Muro Ocidental é o segundo local mais sagrado do judaísmo, atrás somente do Santo dos Santos, no monte do Templo. Trata-se do único vestígio do antigo Templo de Herodes, erguido por Herodes, o Grande no lugar do Templo de Jerusalém inicial",
                    style: TextStyle(),
                  ),
                )
              ],
            )));
  }
}


class Button extends StatelessWidget {
  Button({required this.onPress, required this.icon, required this.text});
  VoidCallback? onPress;
  IconData icon;
  var text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TextButton(
            onPressed: onPress,
            child: Column(
              children: [Icon(icon, color: Colors.blue), Text(text)],
            )));
  }
}

