import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import 'node_settings_notifier.dart';
import 'node_types.dart';

final spectreNodeSettingsProvider =
    StateNotifierProvider<NodeSettingsNotifier, NodeConfigSettings>((ref) {
  final repository = ref.watch(settingsRepositoryProvider);
  final notifier = NodeSettingsNotifier(repository);
  return notifier;
});

final spectreNodeOptionsProvider = Provider((ref) {
  final settings = ref.watch(spectreNodeSettingsProvider);
  return settings.options;
});

final spectreNodeConfigProvider = Provider((ref) {
  final settings = ref.watch(spectreNodeSettingsProvider);
  return ActiveNodeConfig(config: settings.selected);
});
