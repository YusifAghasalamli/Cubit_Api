import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 100),
        child: Container(
          width: double.infinity,
          height: 100,
          decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50))),
          child: const Center(
            child: Text("TODO"),
          ),
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
