import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:imagesearchgallery/view/saved_images_screen.dart';

void main() {
  runApp(
    // For widgets to be able to read providers, we need to wrap the entire
    // application in a "ProviderScope" widget.
    // This is where the state of our providers will be stored.
    ProviderScope(
      child: MyApp(),
    ),
  );
}

// Note: MyApp is a HookConsumerWidget, from flutter_hooks.
class MyApp extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: "Image Search Gallery",
        home: SavedImagesScreen(),
        theme: ThemeData(
          primaryColor: Colors.blueGrey,
          primarySwatch: Colors.blueGrey,
        ),
    );
  }
}