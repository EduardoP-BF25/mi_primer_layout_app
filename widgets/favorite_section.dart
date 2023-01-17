import 'package:flutter/material.dart';

class favorite_section extends StatefulWidget {
  const favorite_section({super.key});

  @override
  State<favorite_section> createState() => _favorite_sectionState();
}

class _favorite_sectionState extends State<favorite_section> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      Container(
        padding: const EdgeInsets.all(0),
        child: IconButton(
          padding: const EdgeInsets.all(0),
          alignment: Alignment.centerRight,
          icon: (_isFavorited
              ? const Icon(Icons.star)
              : const Icon(Icons.star_border)),
          color: Colors.red[500],
          onPressed: _toggleFavorite,
        ),
      ),
      SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ))
    ]);
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true; 
      }
    });
  }
}
