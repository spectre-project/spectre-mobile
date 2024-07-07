import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_icons.dart';
import '../app_providers.dart';
import '../spectre/spectre.dart';
import '../l10n/l10n.dart';
import '../util/numberutil.dart';
import '../widgets/app_text_field.dart';
import '../widgets/fiat_value_container.dart';
import '../widgets/spr_icon_widget.dart';

final amountProvider = StateProvider.autoDispose<Amount?>((ref) => null);

class ReceiveAmountField extends HookConsumerWidget {
  final String hint;
  final bool allowFiat;

  const ReceiveAmountField({
    Key? key,
    this.hint = '',
    this.allowFiat = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final styles = ref.watch(stylesProvider);
    final l10n = l10nOf(context);

    final spectreFormatter = ref.watch(spectreFormatterProvider);
    final fiatFormatter = ref.watch(fiatFormatterProvider);
    final amount = ref.watch(amountProvider);

    final amountController = useTextEditingController();
    final amountFocusNode = useFocusNode();

    final fiatMode = ref.watch(fiatModeProvider);
    final amountHint = useState<String?>(null);

    final hintText = fiatMode ? l10n.enterFiatValue : l10n.enterAmount;

    useEffect(() {
      amountFocusNode.addListener(() {
        amountHint.value = amountFocusNode.hasFocus ? '' : null;
      });
      return null;
    });

    useEffect(() {
      if (amount != null) {
        amountController.text = switch (fiatMode) {
          true => ref.read(fiatForAmountProvider(amount)),
          false => NumberUtil.textFieldFormatedAmount(amount),
        };
      }
      return null;
    }, [fiatMode]);

    void onValueChanged(String text) {
      final notifier = ref.read(amountProvider.notifier);
      final value = switch (fiatMode) {
        true => () {
            final price = ref.read(spectrePriceProvider);
            final fiatValue = fiatFormatter.tryParse(text);
            if (price.price == Decimal.zero || fiatValue == null) {
              return null;
            }
            return (fiatValue / price.price)
                .toDecimal(scaleOnInfinitePrecision: 8);
          }(),
        false => spectreFormatter.tryParse(text),
      };

      if (value == null) {
        notifier.state = null;
        return;
      }
      notifier.state = Amount.value(value);
    }

    void clearAmount() {
      final notifier = ref.read(amountProvider.notifier);
      notifier.state = null;
      amountController.clear();
    }

    return FiatValueContainer(
      amount: amount ?? Amount.zero,
      showAmount: fiatMode,
      hint: amountHint.value ?? hint,
      child: AppTextField(
        focusNode: amountFocusNode,
        controller: amountController,
        topMargin: 15,
        cursorColor: theme.primary,
        style: styles.textStyleParagraphPrimary,
        inputFormatters: [fiatMode ? fiatFormatter : spectreFormatter],
        onChanged: onValueChanged,
        textInputAction: TextInputAction.done,
        maxLines: null,
        autocorrect: false,
        hintText: amountHint.value ?? hintText,
        prefixButton: allowFiat
            ? TextFieldButton(
                icon: AppIcons.swapcurrency,
                onPressed: () => ref
                    .read(fiatModeProvider.notifier)
                    .update((state) => !state),
              )
            : TextFieldButton(
                widget: Image.asset(kSprIconPath, width: 40, height: 40),
              ),
        suffixButton: TextFieldButton(
          icon: Icons.clear,
          onPressed: clearAmount,
        ),
        fadeSuffixOnCondition: true,
        suffixShowFirstCondition:
            (amount?.value ?? Decimal.zero) > Decimal.zero,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        textAlign: TextAlign.center,
      ),
    );
  }
}
