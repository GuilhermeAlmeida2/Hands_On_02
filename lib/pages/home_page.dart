import 'package:flutter/material.dart';
import 'package:stateful_navigation_project/components/button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Home Page',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Listagem e Navegação",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                "Uma aplicação para \ngerência de estado e \nnavegação com Flutter",
                style: TextStyle(fontSize: 16),
              ),
              ButtonWidget(
                paraOnde: '/second',
                informacao: 'Ir para List Page',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
