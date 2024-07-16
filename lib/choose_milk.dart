import 'package:flutter/material.dart';

class ChooseMilk extends StatefulWidget {
  final String milkType;
  const ChooseMilk({super.key, required this.milkType});

  @override
  State<ChooseMilk> createState() => _ChooseMilkState();
}

class _ChooseMilkState extends State<ChooseMilk> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Column(
        children: [
          GestureDetector(
            child: Container(
              height: 40,
              width: 140,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromRGBO(239, 227, 200, 1,),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                    widget.milkType,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
