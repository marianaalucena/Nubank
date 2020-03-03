import 'package:flutter/material.dart';
import 'package:nubank_academy/app/modules/home/shared/button_widget.dart';

class ConfigPage extends StatefulWidget {
  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTileTheme(
        textColor: Colors.white,
        iconColor: Colors.white,
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Image.network('https://i.imgur.com/hXgSlZn.png'),
              SizedBox(
                height: 10,
              ),
              Text.rich(
                TextSpan(children: [
                  TextSpan(text: 'Banco '),
                  TextSpan(
                      text: '260',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' - Nu Pagamentos S.A. \n'),
                  TextSpan(text: 'Agência '),
                  TextSpan(
                      text: '0001 \n',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'Conta '),
                  TextSpan(
                      text: '00000000-1',
                      style: TextStyle(fontWeight: FontWeight.bold))
                ]),
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                height: 0,
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.help_outline),
                title: Text("Me Ajuda"),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              Divider(
                height: 0,
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.person_outline),
                title: Text("Perfil"),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              Divider(
                height: 0,
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.monetization_on),
                title: Text("Configurar NuConta"),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              Divider(
                height: 0,
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.credit_card),
                title: Text("Configurar Cartão"),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              Divider(
                height: 0,
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Icon(Icons.phone_iphone),
                title: Text("Configurações do aplicativo"),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              Divider(
                height: 0,
              ),
              SizedBox(
                height: 30,
              ),
              ButtonWidget(
                text: "SAIR DO APP",
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
