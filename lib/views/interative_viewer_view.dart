import 'package:flutter/material.dart';

class InteractiveViewerView extends StatefulWidget {
  const InteractiveViewerView({super.key});

  @override
  State<InteractiveViewerView> createState() => _InteractiveViewerViewState();
}

class _InteractiveViewerViewState extends State<InteractiveViewerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(50),
        maxScale: 5,
        minScale: 0.4,
        clipBehavior: Clip.hardEdge,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter'),
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Button'),
            ),
          ),
        ),
      ),
    );
  }
}
