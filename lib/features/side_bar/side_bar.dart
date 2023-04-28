import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8.0),
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
          color: Colors.black87, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
              onPressed: () => context.go("/"),
              backgroundColor: Colors.black87,
              foregroundColor: Colors.amber,
              child: Container(
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(Icons.house),
              )),
          const SizedBox(height: 10),
          const SizedBox(height: 4),
          FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.black87,
              foregroundColor: Colors.amber,
              child: Container(
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  'git.png',
                  width: 30,
                  height: 30,
                  color: Colors.amber,
                ),
              )),
          const SizedBox(height: 10),
          FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.black87,
              foregroundColor: Colors.amber,
              child: Container(
                margin: const EdgeInsets.all(4.0),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  'price.png',
                  width: 30,
                  height: 30,
                  color: Colors.amber,
                ),
              )),
          const SizedBox(height: 10),
          FloatingActionButton(
              onPressed: () => context.go('/ide'),
              backgroundColor: Colors.black87,
              foregroundColor: Colors.amber,
              child: Container(
                margin: const EdgeInsets.all(4.0),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  'ide_icon.png',
                  width: 30,
                  height: 30,
                  color: Colors.amber,
                ),
              )),
          const SizedBox(height: 10),
          FloatingActionButton(
              onPressed: () => context.go('/search'),
              backgroundColor: Colors.black87,
              foregroundColor: Colors.amber,
              child: Container(
                margin: const EdgeInsets.all(4.0),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  'dots.png',
                  width: 30,
                  height: 30,
                  color: Colors.amber,
                ),
              )),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}
