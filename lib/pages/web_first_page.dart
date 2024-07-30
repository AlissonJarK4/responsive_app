import 'package:flutter/material.dart';

class WebFirstPage extends StatefulWidget {
  const WebFirstPage({super.key});

  @override
  State<WebFirstPage> createState() => _WebFirstPageState();
}

class _WebFirstPageState extends State<WebFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[700],
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text("Desktop"),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      backgroundColor: Colors.deepPurple[200],
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 21 / 9,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          color: Colors.deepPurple[400],
                        ),
                        Container(
                          color: Colors.deepPurple[300],
                          width: 200,
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(12),
                          child: Container(
                            height: 30,
                            color: Colors.deepPurple[300],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              width: 250,
              color: Colors.deepPurple[50],
            ),
          )
        ],
      ),
    );
  }
}
