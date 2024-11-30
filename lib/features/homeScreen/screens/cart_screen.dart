// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_com/core/export/exports.dart';

class CartScreen extends StatefulWidget {
  List<ProductModel>? cartList = [];
  CartScreen({super.key, this.cartList});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    widget.cartList!.isNotEmpty
        // widget.cartList!.length > 0
        ? getTotal()
        : 0;
    super.initState();
  }

  int? netTotal;

  void getTotal() {
    netTotal = widget.cartList!
        .map((item) => item.price!.toInt() * item.quantity)
        .reduce((value, element) => value + element);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Total Item ${widget.cartList!.length}"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.cartList!.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "${widget.cartList![index].image}",
                        height: 90,
                        width: 90,
                      ),
                      Text("${widget.cartList![index].productName}"),
                      Text("${widget.cartList![index].price! * widget.cartList![index].quantity}"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (widget.cartList![index].quantity > 1) {
                                  widget.cartList![index].quantity--;
                                  getTotal();
                                } else if (widget.cartList![index].quantity ==
                                    1) {
                                  widget.cartList!.removeAt(index);
                                  getTotal();
                                }
                              });
                            },
                            icon: Icon(Icons.remove),
                          ),
                          Text("${widget.cartList![index].quantity}"),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                widget.cartList![index].quantity++;
                                getTotal();
                              });
                            },
                            icon: Icon(Icons.add),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                widget.cartList!.removeAt(index);
                                getTotal();
                              });
                            },
                            icon: Icon(Icons.delete),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            color: cardColor,
            child: Row(
              children: [
                Text("Total Price: "),
                Text("$netTotal"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
