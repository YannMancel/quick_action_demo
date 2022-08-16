import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart'
    show ConsumerWidget, ProviderScope, WidgetRef;
import 'package:quick_action_demo/_features.dart';

void main() {
  return runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Action',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const _QuickActionsWrapper(child: HomePage()),
    );
  }
}

class _QuickActionsWrapper extends ConsumerWidget {
  const _QuickActionsWrapper({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<QuickEvent>(quickActionsLogicRef, (_, next) {
      next.maybeWhen<void>(
        detail: () => DetailPage.go(context),
        orElse: () {/* Do nothing here */},
      );
    });

    return child;
  }
}
