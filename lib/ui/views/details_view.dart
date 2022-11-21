import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView(
      {super.key, required this.num, required this.onBackClicked});

  final int num;
  final VoidCallback onBackClicked;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: onBackClicked),
        title: const Text('Details'),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/img/tag.png',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          Text(
            'clicou item $num',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
