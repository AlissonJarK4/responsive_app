import 'package:flutter/material.dart';

class MobileFirstPage extends StatefulWidget {
  const MobileFirstPage({super.key});

  @override
  State<MobileFirstPage> createState() => _MobileFirstPageState();
}

class _MobileFirstPageState extends State<MobileFirstPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text("Mobile"),
      ),
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                color: Colors.deepPurple[400],
                // child: GridView.builder(
                //     itemCount: 32,
                //     gridDelegate:
                //         const SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 8,
                //     ),
                //     itemBuilder: (context, index) {
                //       return Container(
                //         color: Colors.green[500],
                //         margin: const EdgeInsets.all(4),
                //       );
                    // }),
              ),
            ),
          ),
          AspectRatio(
            aspectRatio: 25 / 9,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: AnimatedContainer(
                duration: const Duration(seconds: 2),
                color: Colors.deepPurple[400],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      height: 120,
                      color: Colors.deepPurple[300],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
