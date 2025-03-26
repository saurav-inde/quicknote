import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quicknote2/providers/dark_theme_provider.dart';

class SettingScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SwitchListTile(
        title: Text("Dark Mode"),
        value: ref.watch(dartkThemeProvider),
        onChanged: (value) {
          if (value) {
            setDarkMode();
          } else {
            removeDarkMode();
          }
          ref.read(dartkThemeProvider.notifier).state = value;
        },
      ),
    );
  }
}
