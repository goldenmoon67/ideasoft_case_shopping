import 'package:flutter/material.dart';

class Newsteller extends StatelessWidget {
  const Newsteller({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.black,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'HABERLER VE ÖZEL FIRSATLAR İÇİN E-POSTA ADRESİNİ KAYDET!',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              hintText: 'E-posta adresiniz',
              filled: true,
              fillColor: Colors.white,
              suffixIcon: Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
    );
  }
}
