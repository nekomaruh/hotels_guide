import 'package:flutter/material.dart';

class HotelsDrawer extends StatelessWidget {
  const HotelsDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Text(
              'Guia de Moteis challenge',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 50),
            Text('Visit my portfolio:'),
            Text(
              'nekomaruh.github.io',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
