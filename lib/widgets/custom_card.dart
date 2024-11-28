import 'package:e_com/core/export/exports.dart';

class CustomCard extends StatelessWidget {
  Color? color;
  Widget? child;

  CustomCard({super.key, this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      // margin: EdgeInsets.all(8.0),
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      color: color,
      child: child,
    );
  }
}
