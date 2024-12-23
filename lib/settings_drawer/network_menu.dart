import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../app_router.dart';
import '../l10n/l10n.dart';
import '../node_settings/node_setting.dart';
import '../node_settings/nodes_sheet.dart';
import '../settings/block_explorer_setting.dart';
import '../settings/block_explorers.dart';
import '../widgets/app_icon_button.dart';
import '../widgets/app_simpledialog.dart';
import '../widgets/gradient_widgets.dart';
import '../widgets/sheet_util.dart';
import 'double_line_item.dart';
import '../settings_drawer/selection_item.dart';

class NetworkMenu extends ConsumerStatefulWidget {
  final VoidCallback onBackAction;
  const NetworkMenu({
    Key? key,
    required this.onBackAction,
  }) : super(key: key);

  @override
  _NetworkMenuState createState() => _NetworkMenuState();
}

class _NetworkMenuState extends ConsumerState<NetworkMenu>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final spectreNodeConfig = ref.watch(spectreNodeConfigProvider);

    return Container(
      decoration: BoxDecoration(
        color: theme.backgroundDark,
        boxShadow: [
          BoxShadow(
            color: theme.barrierWeakest,
            offset: Offset(-5, 0),
            blurRadius: 20,
          ),
        ],
      ),
      child: SafeArea(
        minimum: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.035,
          top: 60,
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10, top: 5),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: AppIconButton(
                      icon: AppIcons.back,
                      onPressed: widget.onBackAction,
                    ),
                  ),
                  Text(
                    l10n.networkHeader,
                    style: styles.textStyleSettingsHeader,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  ListView(
                    padding: const EdgeInsets.only(top: 15),
                    children: [
                      Container(
                        margin: const EdgeInsetsDirectional.only(
                          start: 30,
                          bottom: 10,
                        ),
                        child: Text(
                          l10n.preferences,
                          style: styles.textStyleAppTextFieldHint,
                        ),
                      ),
                      Divider(height: 2, color: theme.text15),
                      DoubleLineItem(
                        heading: l10n.nodeAddress,
                        defaultMethod: NodeSetting(spectreNodeConfig.config),
                        icon: Icons.settings_ethernet,
                        onPressed: () {
                          _changeSpectreNode(context, ref);
                        },
                      ),
                      Divider(height: 2, color: theme.text15),
                      Consumer(builder: (context, ref, _) {
                        final blockExplorer = ref.watch(blockExplorerProvider);
                        return DoubleLineItem(
                          heading: l10n.blockExplorer,
                          defaultMethod: BlockExplorerSetting(blockExplorer),
                          icon: AppIcons.search,
                          onPressed: () {
                            _explorerDialog(context, ref);
                          },
                        );
                      }),
                      Container(
                        margin: const EdgeInsetsDirectional.only(
                          start: 30,
                          bottom: 10,
                          top: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Network Stats",
                              style: styles.textStyleAppTextFieldHint,
                            ),
                            RotationTransition(
                              turns: _animation,
                              child: IconButton(
                                icon: Icon(Icons.refresh),
                                onPressed: () async {
                                  _controller.forward(from: 0);
                                  return await ref
                                      .refresh(networkStatsProvider.future);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(height: 2, color: theme.text15),
                      Consumer(builder: (context, ref, _) {
                        final networkStats = ref.watch(networkStatsProvider);
                        return networkStats.when(
                          data: (stats) => Column(
                            children: [
                              DoubleLineItem(
                                heading: "Network Hashrate",
                                defaultMethod: SelectionItem(
                                    "${stats.hashrate.toStringAsFixed(3)} MH/s"),
                                icon: Icons.speed,
                                onPressed: () {},
                              ),
                              Divider(height: 2, color: theme.text15),
                              DoubleLineItem(
                                heading: "Max Supply",
                                defaultMethod:
                                    SelectionItem("${stats.maxSupply}"),
                                icon: Icons.attach_money,
                                onPressed: () {},
                              ),
                              Divider(height: 2, color: theme.text15),
                              DoubleLineItem(
                                heading: "Circulating Supply",
                                defaultMethod: SelectionItem(
                                    "${stats.circulatingSupply.toStringAsFixed(3)} mio"),
                                icon: Icons.monetization_on,
                                onPressed: () {},
                              ),
                              Divider(height: 2, color: theme.text15),
                              DoubleLineItem(
                                heading: "Mempool Size",
                                defaultMethod:
                                    SelectionItem("${stats.mempoolSize}"),
                                icon: Icons.storage,
                                onPressed: () {},
                              ),
                              Divider(height: 2, color: theme.text15),
                              DoubleLineItem(
                                heading: "Block Reward",
                                defaultMethod:
                                    SelectionItem("${stats.blockReward}"),
                                icon: Icons.cake,
                                onPressed: () {},
                              ),
                              Divider(height: 2, color: theme.text15),
                              DoubleLineItem(
                                heading: "Next Halving Date",
                                defaultMethod:
                                    SelectionItem("${stats.nextHalvingDate}"),
                                icon: Icons.timer,
                                onPressed: () {},
                              ),
                              Divider(height: 2, color: theme.text15),
                              DoubleLineItem(
                                heading: "Next Halving Amount",
                                defaultMethod:
                                    SelectionItem("${stats.nextHalvingAmount}"),
                                icon: Icons.timelapse,
                                onPressed: () {},
                              ),
                              Divider(height: 2, color: theme.text15),
                              DoubleLineItem(
                                heading: "Server Version",
                                defaultMethod:
                                    SelectionItem("${stats.serverVersion}"),
                                icon: Icons.verified_user,
                                onPressed: () {},
                              ),
                            ],
                          ),
                          loading: () =>
                              Center(child: CircularProgressIndicator()),
                          error: (err, stack) =>
                              Center(child: Text('Error: $err')),
                        );
                      }),
                    ],
                  ),
                  const ListBottomGradient(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _changeSpectreNode(BuildContext context, WidgetRef ref) {
    final theme = ref.read(themeProvider);
    Sheets.showAppHeightNineSheet(
      context: context,
      theme: theme,
      widget: const SpectreNodesSheet(),
    );
  }

  Future<void> _explorerDialog(BuildContext context, WidgetRef ref) async {
    BlockExplorer? selection = await showAppDialog<BlockExplorer>(
        context: context,
        builder: (context) {
          return AppSimpleDialog(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                l10nOf(context).blockExplorer,
                style: ref.read(stylesProvider).textStyleDialogHeader,
              ),
            ),
            children: _buildExplorerOptions(context, ref),
          );
        });
    if (selection != null) {
      final notifier = ref.read(blockExplorerSettingsProvider.notifier);
      final networkId = ref.read(networkIdProvider);

      notifier.updateBlockExplorer(selection, networkId: networkId);
    }
  }

  List<Widget> _buildExplorerOptions(BuildContext context, WidgetRef ref) {
    final networkId = ref.read(networkIdProvider);
    final options = kBlockExplorersOptions[networkId] ?? [];
    return options.map((value) {
      final styles = ref.read(stylesProvider);
      return SimpleDialogOption(
        onPressed: () => appRouter.pop(context, withResult: value),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(value.name, style: styles.textStyleDialogOptions),
              Text(value.url, style: styles.addressText),
            ],
          ),
        ),
      );
    }).toList();
  }
}
