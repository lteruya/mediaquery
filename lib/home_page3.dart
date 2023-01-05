import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage3 extends StatelessWidget {
  const HomePage3({super.key});

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: const Center(child: Text('AppBar')),
    );
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: appBar,
      body: Container(
          color: Colors.yellow,
          width: size.width,
          height: size.height,
          child: LayoutBuilder(
            builder: (_, constraints) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.red,
                    width: constraints.maxWidth,
                    height: constraints.maxHeight * 0.5,
                  ),
                  Container(
                    color: Colors.blue,
                    width: constraints.maxWidth,
                    height: constraints.maxHeight * 0.5,
                  ),
                ],
              );
            },
          )),
    );
  }
}
