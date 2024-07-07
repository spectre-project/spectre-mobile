import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../spectre/spectre.dart';
import '../settings/block_explorer_settings.dart';
import '../settings/block_explorers.dart';
import '../settings/settings.dart';

const _kBlockExplorerConfigKey = '_kBlockExplorerConfigKey';

extension BlockExplorerSettingsExtension on SettingsRepository {
  BlockExplorerSettings getBlockExplorerSettings() {
    return box.tryGet<BlockExplorerSettings>(
          _kBlockExplorerConfigKey,
          typeFactory: BlockExplorerSettings.fromJson,
        ) ??
        const BlockExplorerSettings();
  }

  Future<void> setBlockExplorerSettings(BlockExplorerSettings settings) {
    return box.set(_kBlockExplorerConfigKey, settings);
  }
}

class BlockExplorerNotifier extends StateNotifier<BlockExplorerSettings> {
  final SettingsRepository repository;

  BlockExplorerNotifier(this.repository)
      : super(repository.getBlockExplorerSettings());

  Future<void> updateBlockExplorer(
    BlockExplorer explorer, {
    required SpectreNetwork network,
  }) {
    final selection = Map.of(state.selection);
    selection[network] = explorer;
    state = state.copyWith(
      selection: selection,
    );
    return repository.setBlockExplorerSettings(state);
  }
}
