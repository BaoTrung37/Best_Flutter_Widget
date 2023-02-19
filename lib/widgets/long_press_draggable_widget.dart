import 'package:flutter/material.dart';

class LongPressDraggableWidget extends StatefulWidget {
  const LongPressDraggableWidget({super.key});

  @override
  State<LongPressDraggableWidget> createState() =>
      _LongPressDraggableWidgetState();
}

class _LongPressDraggableWidgetState extends State<LongPressDraggableWidget> {
  Offset _offset = const Offset(200, 200);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Positioned(
              left: _offset.dx,
              top: _offset.dy,
              child: LongPressDraggable(
                feedback: Image.network(
                  'https://tinyurl.com/95ncjeuu',
                  height: 200,
                  color: Colors.orangeAccent,
                  colorBlendMode: BlendMode.colorBurn,
                ),
                onDragEnd: (details) {
                  setState(() {
                    double adjustment = MediaQuery.of(context).size.height -
                        constraints.maxHeight;
                    debugPrint(adjustment.toString());
                    _offset = Offset(
                      details.offset.dx,
                      details.offset.dy - adjustment,
                    );
                  });
                },
                child: Image.network(
                  'https://tinyurl.com/95ncjeuu',
                  height: 200,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
