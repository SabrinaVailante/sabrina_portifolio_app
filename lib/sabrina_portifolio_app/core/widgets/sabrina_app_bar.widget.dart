import 'package:flutter/material.dart';

class SabrinaAppBarWidget extends StatefulWidget
    implements PreferredSizeWidget {
  final Icon icon;
  final String title;
  final List<Widget>? actions;

  const SabrinaAppBarWidget(
      {super.key, required this.title, required this.icon, required this.actions});

  @override
  State<SabrinaAppBarWidget> createState() => _SabrinaAppBarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _SabrinaAppBarWidgetState extends State<SabrinaAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(36, 167, 174, 1.0),
      title: Text(widget.title,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold)),
      iconTheme: const IconThemeData(color: Colors.white),
      shadowColor: Colors.white,
      elevation: 2,
      actions: widget.actions!,
    );
  }
}
