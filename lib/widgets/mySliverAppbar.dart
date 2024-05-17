import 'package:flutter/material.dart';

class MySliverAppbar extends StatelessWidget {
  const MySliverAppbar({
    super.key,
    this.child,
    required this.title,
    required this.title1,
  });
  final Widget? child;
  final Widget title1;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
      ],
      expandedHeight: 340,
      collapsedHeight: 100,
      floating: true,
      pinned: false,
      title: title1,
     
      // backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
