import 'package:hooks_riverpod/hooks_riverpod.dart' show StateNotifierProvider;
import 'package:quick_action_demo/_features.dart';

final quickActionsLogicRef =
    StateNotifierProvider<QuickActionsLogic, QuickEvent>(
  (_) => QuickActionsLogic(),
  name: 'quickActionsLogicRef',
);
