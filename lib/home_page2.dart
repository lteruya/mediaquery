import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: const Center(child: Text('AppBar')),
    );
    var size = MediaQuery.of(context).size;
    var screenHeight = size.height -
        appBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: appBar,
      body: Container(
        color: Colors.yellow,
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.red,
              width: size.width,
              height: screenHeight * 0.5,
            ),
            Container(
              color: Colors.blue,
              width: size.width,
              height: screenHeight * 0.5,
            ),
          ],
        ),
      ),
    );
  }
}
