import 'package:flutter/material.dart';

class ActionTitle extends StatelessWidget {
  const ActionTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('OYUNUN KURALLARINI BELİRLE!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          TextButton(
            child: const Text('ALIŞVERİŞE BAŞLA',
                style: TextStyle(color: Colors.black)),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
