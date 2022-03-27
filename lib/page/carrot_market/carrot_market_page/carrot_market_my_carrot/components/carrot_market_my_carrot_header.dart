import 'package:flutter/material.dart';

class MyCarrotHeader extends StatelessWidget {
  const MyCarrotHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 65,
          height: 65,
          child: Stack(
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("https://placeimg.com/200/100/people",),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {},
                    icon: const Icon(Icons.camera_alt_outlined)),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("developer"),
            Text("좌동 #00912"),
          ],
        )
      ],
    );
  }
}