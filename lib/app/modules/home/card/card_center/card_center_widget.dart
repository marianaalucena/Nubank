import 'package:flutter/material.dart';
import 'package:nubank_academy/app/modules/home/card/card_widget.dart';

class CardCenterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CardWidget(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.credit_card, color: Colors.black45),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Cartão de Crédito",
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 16),
                            ),
                          ],
                        ),
                        //responsividade dos textos
                        Expanded(
                          child: MediaQuery(
                            data: MediaQuery.of(context).copyWith(
                                textScaleFactor:
                                    MediaQuery.of(context).size.width * 0.003),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                //maior tamanho que conseguir dentro daquele contexto
                                //media query vai fazer a mesma coisa
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      "Fatura Atual",
                                      style: TextStyle(color: Colors.black45),
                                    ),
                                    Text(
                                      "R\$ 1.500,00",
                                      style: TextStyle(
                                          color: Color(0xFF00BDC6),
                                          fontSize: 30),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text("Limite Disponível "),
                                        Text(
                                          "R\$ 80,00",
                                          style: TextStyle(
                                              color: Color(0xFF00BDC6)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 8,
                      color: Colors.green,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 110,
                            color: Colors.yellow,
                          ),
                          Container(
                            height: 100,
                            color: Color(0xFF9CD236),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Theme.of(context).dividerColor,
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: <Widget>[
                  Icon(Icons.restaurant),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                          "Compra mais recente no bar do cuscuz no valor de R\$ 15,00 ontem"),
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
