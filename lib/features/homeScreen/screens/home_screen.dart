// ignore_for_file: prefer_const_constructors

import 'package:e_com/core/export/exports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ProductModel> cartList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Total Item ${cartList.length}"),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              physics: FixedExtentScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                // crossAxisSpacing: 8,
                // mainAxisSpacing: 8,
              ),
              itemBuilder: (context, index) {
                return CustomCard(
                  color: cardColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Flexible(
                          child: Image.asset(
                            "${productList[index].image}",
                          ),
                        ),
                        Text("${productList[index].productName}"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${productList[index].price}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  cartList.add(productList[index]);
                                });
                              },
                              icon: Icon(Icons.shopping_cart),
                            ),
                          ],
                        ),
                        Text(
                          "${productList[index].productDetails}",
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              height: MediaQuery.of(context).size.height * 0.065,
              minWidth: double.infinity,
              // padding: EdgeInsets.only(left: 8,right: 8),
              color: buttonColor,
              child: Text("Got to Next Page"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CartScreen(cartList: cartList),
                  ),
                );
                // Navigator.of(context).pushNamed("/cartScreen");
              },
            ),
          ),
        ],
      ),
    );
  }
}
