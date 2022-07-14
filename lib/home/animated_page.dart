import 'package:flutter/material.dart';

class AnimatedPage extends StatefulWidget {
  const AnimatedPage({Key? key}) : super(key: key);

  @override
  State<AnimatedPage> createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
  double _width = 100;
  double _height = 100;
  double? _updateUi() {
    if (_width == 100) {
      setState(() {
        _width = 300;
        _height = 300;
      });
    } else {
      setState(() {
        _width = 100;
        _height = 100;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
              child: AnimatedContainer(
                duration: const Duration(microseconds: 100),
                width: _width,
                height: _height, //value from animation controller
                child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, //making box to circle
                      color: Colors.deepOrangeAccent //background of container
                      ),
                  //value from animation controller
                ),
              ),
              onTap: () {
                _updateUi();
              })
        ],
      ),
    );
  }
}
