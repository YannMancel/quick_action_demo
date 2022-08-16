import 'package:flutter/foundation.dart' show optionalTypeArgs;
import 'package:freezed_annotation/freezed_annotation.dart' show freezed;

part 'quick_event.freezed.dart';

@freezed
class QuickEvent with _$QuickEvent {
  const factory QuickEvent.noAction() = _NoAction;
  const factory QuickEvent.home() = _Home;
  const factory QuickEvent.detail() = _Detail;
}
