import 'package:flutter/material.dart';
import 'package:nubank_academy/app/modules/home/card/card_bottom_widget.dart';
import 'package:nubank_academy/app/modules/home/card/card_widget.dart';

class BottomListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              CardBottomWidget(icon: Icons.person_add, text: "Indicar Amigos"),
              CardBottomWidget(icon: Icons.monetization_on, text: "Depositar"),
              CardBottomWidget(icon: Icons.attach_money, text: "Transferir"),
              CardBottomWidget(icon: Icons.monetization_on, text: "Pagar"),
              CardBottomWidget(icon: Icons.settings, text: "Ajustar Limite"),
              CardBottomWidget(icon: Icons.lock_open, text: "Bloquear Cartão"),
              CardBottomWidget(icon: Icons.credit_card, text: "Cartão Virtual"),
            ],
          ),
        ));
  }
}
