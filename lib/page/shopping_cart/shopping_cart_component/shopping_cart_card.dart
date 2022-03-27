import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yourappawesome/page/shopping_cart/shopping_cart_style/shopping_cart_text.dart';

class ShoppingCartCard extends StatelessWidget {
  const ShoppingCartCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Urban Soft Al 10.0", style: shoppingCartCardTitle(),),
                Text("\$699", style: shoppingCartCardTitle(),),
              ],
            ),

            const SizedBox(height: 5,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: List.generate(5, (index) => const Icon(Icons.star, color: Colors.yellow,))
                ),
                const Text.rich(
                  TextSpan(
                    text: "review",
                    children: <TextSpan>[
                      TextSpan(text: "(26)", style: TextStyle(color: Colors.blue))
                    ]
                  ), 
                )
              ],
            ),

            const SizedBox(height: 20,),

            const Text("Color Options.", style: TextStyle(fontSize: 12),),

            const SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                cardColorSelectButton(color: Colors.red),
                cardColorSelectButton(color: Colors.yellow),
                cardColorSelectButton(color: Colors.green),
                cardColorSelectButton(color: Colors.blue),
                cardColorSelectButton(color: Colors.white),
              ],
            ),

            const SizedBox(height: 20,),

            SizedBox(
              width: 300,
              child: ElevatedButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
                onPressed: () {
                  showCupertinoDialog(
                    context: context,
                    builder: (context) => CupertinoAlertDialog(
                      title: const Text("장바구니에 담으시겠습니까?"),
                      actions: [
                        CupertinoDialogAction(
                          child: const Text("확인"),
                          onPressed: (){
                            Navigator.pop(context);
                          },
                        )
                      ],
                    )
                  );
                  
                },
                child: const Text("Add to Cart", style: TextStyle(color: Colors.white),)

              ),
            ),

          ],
        ),
      ),
    );
  }

  Container cardColorSelectButton({color=Colors.red }) {
    return Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                  )
                  
                ),
                child: FractionallySizedBox(
                  widthFactor: 0.8,
                  heightFactor: 0.8,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: color,
                      padding: const EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: (){},
                    child: const Text(""),
                  ),
                ),
              );
  }
}