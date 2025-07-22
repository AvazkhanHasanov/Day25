import 'package:flutter/material.dart';

class image extends StatelessWidget {
  const image({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              child: Image.asset(
                'assets/mosalah1.png',
                fit: BoxFit.cover,
                width: 265,
              ),
            ),
          ),
          Positioned(
            left: 160,
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                alignment: Alignment.centerLeft,
                height: 165,
                width: 216,
                decoration: BoxDecoration(color: Color(0xFFFF8B03)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text(
                    textAlign: TextAlign.start,
                    'Get 1 Ticket Streaming For Your Favorite Match',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFEAEAEA),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
