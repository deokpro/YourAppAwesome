import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingCartSelectImage extends StatefulWidget {

  const ShoppingCartSelectImage({
    Key? key,
  }) : super(key: key);

  @override
  State<ShoppingCartSelectImage> createState() => _ShoppingCartSelectImageState();
}

class _ShoppingCartSelectImageState extends State<ShoppingCartSelectImage> {
  int _imageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: IndexedStack(
            index: _imageIndex,
            children: [
              Image.asset("assets/shopping_cart/p1.jpeg"),
              Image.asset("assets/shopping_cart/p2.jpeg"),
              Image.asset("assets/shopping_cart/p3.jpeg"),
              Image.asset("assets/shopping_cart/p4.jpeg"),
            ],
          )
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            indexStackSelectButton(id: 0, icon: Icons.directions_bike),
            indexStackSelectButton(id: 1, icon: Icons.motorcycle),
            indexStackSelectButton(id: 2, icon: CupertinoIcons.car_detailed),
            indexStackSelectButton(id: 3, icon: CupertinoIcons.airplane),
          ],
        )
      ],
    );
  }

  Widget indexStackSelectButton({required int id, required IconData icon}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _imageIndex = id;
        });
      },
      child: Container(
          decoration: BoxDecoration(
            color: id == _imageIndex ? Colors.orange : Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 60,
          width: 60,
          child: Icon(icon),
        ),
    );
  }
}
