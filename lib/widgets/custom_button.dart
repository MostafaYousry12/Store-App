import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.ButtomName, this.onTap});
  String? ButtomName;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        width: double.infinity,
        height: 60,
        child: Center(child: Text(ButtomName!)),
      ),
    );
  }
}
