import 'package:flutter/material.dart';
// import 'package:badges/badges.dart';

class Screen01 extends StatelessWidget {
  final Function callback;
  const Screen01({super.key, required this.callback});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Shopping_Cart"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => callback('increase'),
                  child: const Text('Increment')),
              ElevatedButton(
                  onPressed: () => callback('decrease'),
                  child: const Text('Decrement'))
            ],
          ),
        ));
  }
}

class Screen02 extends StatelessWidget {
  final Function callback;
  const Screen02({super.key, required this.callback});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => callback('increase'),
                child: const Text('Increment')),
            ElevatedButton(
                onPressed: () => callback('decrease'),
                child: const Text('Decrement'))
          ],
        ),
      ),
    );
  }
}

class Screen03 extends StatelessWidget {
  final Function callback;
  const Screen03({super.key, required this.callback});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourites"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => callback('increase'),
                child: const Text('Increment')),
            ElevatedButton(
                onPressed: () => callback('decrease'),
                child: const Text('Decrement'))
          ],
        ),
      ),
    );
  }
}
