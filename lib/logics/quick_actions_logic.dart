import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart' show StateNotifier;
import 'package:quick_action_demo/_features.dart';
import 'package:quick_actions/quick_actions.dart'
    show QuickActions, ShortcutItem;

class QuickActionsLogic extends StateNotifier<QuickEvent> {
  QuickActionsLogic() : super(const QuickEvent.noAction()) {
    _initialize();
  }

  static const QuickActions _quickActions = QuickActions();

  List<ShortcutItem> get _items {
    return const <ShortcutItem>[
      ShortcutItem(
        type: 'action_main',
        localizedTitle: 'home',
      ),
      ShortcutItem(
        type: 'action_detail',
        localizedTitle: 'detail',
      )
    ];
  }

  ValueSetter<String> get _handler {
    return (shortcutType) {
      switch (shortcutType) {
        case 'action_main':
          state = const QuickEvent.home();
          break;

        case 'action_detail':
          state = const QuickEvent.detail();
          break;

        default:
          state = const QuickEvent.noAction();
          break;
      }
    };
  }

  void _initialize() {
    _quickActions
      ..initialize(_handler)
      ..setShortcutItems(_items);
  }
}
