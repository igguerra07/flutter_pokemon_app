import 'package:flutter/material.dart';
import 'package:pokemon_app/app/extensions/extensions.dart';

class PokemonItem extends StatelessWidget {
  final String id;
  final String name;
  final String imgSrc;
  final VoidCallback onTap;

  const PokemonItem({
    Key? key,
    required this.id,
    required this.name,
    required this.imgSrc,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFF91CAFD),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              name.capitalize(),
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    "#${id.padLeft(3, "0")}",
                    style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0x80FFFFFF)),
                  ),
                ),
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        "assets/img/pokeball-rounded.png",
                        color: const Color(0x33FFFFFF),
                        height: 80,
                        fit: BoxFit.fitWidth,
                      ),
                      Image.network(
                        imgSrc,
                        height: 60,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
