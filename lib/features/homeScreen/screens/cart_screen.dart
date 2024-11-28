import 'package:e_com/core/export/exports.dart';

class CartScreen extends StatefulWidget {
  List<ProductModel> cartList = [];
  CartScreen({super.key, required this.cartList});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Total Item ${widget.cartList.length}"),
      ),
    );
  }
}
