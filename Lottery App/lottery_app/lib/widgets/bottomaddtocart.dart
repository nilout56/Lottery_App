import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class BottomAddtoCard extends StatefulWidget {
  const BottomAddtoCard({super.key});

  @override
  State<BottomAddtoCard> createState() => _BottomAddtoCardState();
}

class _BottomAddtoCardState extends State<BottomAddtoCard> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    return Container(
      width: double.infinity,
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(2), topRight: Radius.circular(2)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 3),
                color: Colors.black,
                blurRadius: 5,
                blurStyle: BlurStyle.normal)
          ]),
      child: Column(
        children: [
          FormBuilder(
            key: formKey,
            child: FormBuilderTextField(
              name: 'text',
              onChanged: (val) {
                print(val); // Print the text value write into TextField
              },
            ),
          )
        ],
      ),
    );
  }
}
