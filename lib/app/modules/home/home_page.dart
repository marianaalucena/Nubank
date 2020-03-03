import 'package:flutter/material.dart';
import 'package:nubank_academy/app/modules/home/bottom_list/bottom_list_widget.dart';
import 'package:nubank_academy/app/modules/home/card/card_list_widget.dart';
import 'package:nubank_academy/app/modules/home/config/config_page.dart';
import 'package:nubank_academy/app/modules/home/home_animation.dart';
import 'package:nubank_academy/app/modules/home/logo/logo_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with TickerProviderStateMixin, HomeAnimation {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: Column(
            children: <Widget>[
              //primeira animacao
              GestureDetector(
                //adicionando um evento
                behavior: HitTestBehavior.translucent,
                child: LogoWidget(),
                onTap: () => toggleAnimation(),
              ),
              Expanded(
                child: Stack(
                  children: <Widget>[
                    AnimatedBuilder(
                      animation: configOpacityAnimation,
                      child: ConfigPage(),
                      builder: (context, child) {
                        return Opacity(
                          opacity: configOpacityAnimation.value,
                          child: child,
                        );
                      },
                    ),
                    AnimatedBuilder(
                        animation: listOpacityAnimation,
                        child: Column(
                          children: <Widget>[Spacer(), BottomListWidget()],
                        ),
                        builder: (context, child) {
                          return Opacity(
                            opacity: listOpacityAnimation.value,
                            child: child,
                          );
                        }),
                    AnimatedBuilder(
                      animation: cardAnimation,
                      child: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onVerticalDragUpdate: (details) {
                          controller.value += details.primaryDelta /
                              MediaQuery.of(context).size.height *
                              1.5;
                        },
                        onVerticalDragEnd: (details) {
                          toggleAnimation();
                        },
                        child: Transform.translate(
                          offset: Offset(0, cardAnimation.value),
                          child: CardListWidget(),
                        ),
                      ),
                      builder: (context, child) {
                        return Transform.translate(
                          offset: Offset(0, cardAnimation.value),
                          child: child,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
