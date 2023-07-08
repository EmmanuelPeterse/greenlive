import 'package:flutter/material.dart';
import 'package:greenlive/connection/connectionitem/signing.dart';

class PageConnexion extends StatefulWidget {
  const PageConnexion({super.key});

  @override
  State<PageConnexion> createState() => _PageConnexionState();
}

class _PageConnexionState extends State<PageConnexion> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Signing(),
    );
  }
}