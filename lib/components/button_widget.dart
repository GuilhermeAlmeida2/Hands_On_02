import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String paraOnde;
  final informacao;
  const ButtonWidget(
      {super.key, required this.paraOnde, required this.informacao});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(25)),
        child: TextButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.red)),
          onPressed: () {
            Navigator.pushNamed(context, paraOnde); 
          },
          child: Text(
            informacao,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
