import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../app_providers.dart';
import '../widgets/app_text_field.dart';
import '../widgets/buttons.dart';
import '../widgets/sheet_widget.dart';
import '../widgets/tap_outside_unfocus.dart';

class MiningRewardCalculatorWidget extends ConsumerStatefulWidget {
  @override
  _MiningRewardCalculatorWidgetState createState() =>
      _MiningRewardCalculatorWidgetState();
}

class _MiningRewardCalculatorWidgetState
    extends ConsumerState<MiningRewardCalculatorWidget> {
  final TextEditingController _hashrateController = TextEditingController();
  Map<String, double>? _rewards;
  String? _error;

  void _calculateRewards(double blockReward, double networkHashrate) {
    final hashrate = double.tryParse(_hashrateController.text);

    if (hashrate == null) {
      setState(() {
        _error = 'Please enter a valid number';
        _rewards = null;
      });
      return;
    }

    setState(() {
      _error = null;
    });

    try {
      final ownHashrateMHs = hashrate / 1000; // Convert kH/s to MH/s
      final percentOfNetwork = ownHashrateMHs / networkHashrate;

      final rewards = {
        'hour': _rewardsInRange(blockReward, 3600) * percentOfNetwork,
        'day': _rewardsInRange(blockReward, 86400) * percentOfNetwork,
        'week': _rewardsInRange(blockReward, 604800) * percentOfNetwork,
        'month': _rewardsInRange(blockReward, (365.25 / 12 * 86400).round()) * percentOfNetwork,
      };

      setState(() {
        _rewards = rewards;
      });
    } catch (e) {
      setState(() {
        _error = 'Failed to calculate rewards: $e';
        _rewards = null;
      });
    } finally {
      setState(() {});
    }
  }

  double _rewardsInRange(double blockReward, int blocks) {
    return blockReward * blocks;
  }

  @override
  Widget build(BuildContext context) {
    final styles = ref.watch(stylesProvider);
    final networkStats = ref.watch(networkStatsProvider);

    return TapOutsideUnfocus(
      child: SheetWidget(
        title: 'Mining Calculator',
        mainWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsetsDirectional.only(start: 40, end: 40, top: 16),
              child: AutoSizeText(
                'Enter your mining hashrate in kH/s and calculate the estimated rewards',
                style: styles.textStyleParagraph,
                maxLines: 5,
                stepGranularity: 0.5,
              ),
            ),
            AppTextField(
              topMargin: 30,
              padding: EdgeInsetsDirectional.only(start: 16, end: 16),
              focusNode: FocusNode(),
              controller: _hashrateController,
              textInputAction: TextInputAction.next,
              maxLines: 1,
              autocorrect: false,
              hintText: 'Your hashrate in kH/s',
              keyboardType: TextInputType.number,
              obscureText: false,
              textAlign: TextAlign.center,
              style: styles.textStyleParagraphPrimary,
              onChanged: (_) {
                setState(() {
                  _error = '';
                });
              },
            ),
            if (_error != null && _error!.isNotEmpty)
              Container(
                alignment: AlignmentDirectional(0, 0),
                margin: EdgeInsets.only(top: 3),
                child: Text(
                  _error!,
                  style: styles.textStyleParagraphThinPrimary,
                ),
              ),
            SizedBox(height: 20),
            networkStats.when(
              data: (stats) => PrimaryButton(
                title: 'Calculate Rewards',
                onPressed: () => _calculateRewards(stats.blockReward, stats.hashrate),
              ),
              loading: () => CircularProgressIndicator(),
              error: (err, stack) => Container(
                alignment: AlignmentDirectional(0, 0),
                margin: EdgeInsets.only(top: 3),
                child: Text(
                  'Failed to load network stats: $err',
                  style: styles.textStyleParagraphThinPrimary,
                ),
              ),
            ),
            if (_rewards != null) ...[
              SizedBox(height: 20),
              Text(
                "Estimated Mining Rewards:",
                style: styles.textStyleDialogHeader,
              ),
              ..._rewards!.entries.map((entry) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Reward per ${entry.key}",
                        style: styles.textStyleParagraph,
                      ),
                      Text(
                        "${entry.value.toStringAsFixed(6)} SPR",
                        style: styles.textStyleParagraphPrimary,
                      ),
                    ],
                  ),
                );
              }).toList(),
            ],
          ],
        ),
        bottomWidget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: PrimaryOutlineButton(
            title: 'Close',
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
    );
  }
}
