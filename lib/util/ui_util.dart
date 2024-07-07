import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oktoast/oktoast.dart';

import '../app_providers.dart';
import '../spectre/spectre.dart';
import '../l10n/l10n.dart';
import '../send_sheet/send_confirm_sheet.dart';
import '../send_sheet/send_sheet.dart';
import '../transactions/send_tx.dart';
import '../widgets/sheet_util.dart';
import '../widgets/toast_widget.dart';
import 'numberutil.dart';

abstract class UIUtil {
  static double drawerWidth(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return (width < 375) ? width * 0.94 : width * 0.85;
  }

  static void showSnackbar(String content, BuildContext context) {
    showToastWidget(
      ToastWidget(content: content),
      dismissOtherToast: true,
      duration: Duration(milliseconds: 3000),
    );
  }

  static void showSendFlow(
    BuildContext context, {
    required WidgetRef ref,
    required SpectreUri uri,
  }) {
    final theme = ref.read(themeProvider);

    final amount = uri.amount;
    if (amount == null) {
      Sheets.showAppHeightNineSheet(
        context: context,
        theme: theme,
        widget: SendSheet(uri: uri),
      );
      return;
    }

    final spendableUtxos = ref.read(spendableUtxosProvider);
    final walletService = ref.read(walletServiceProvider);

    final SendTx tx;
    try {
      tx = walletService.createSendTx(
        toAddress: uri.address,
        amountRaw: amount.raw,
        spendableUtxos: spendableUtxos,
        feePerInput: kFeePerInput,
        note: uri.message,
      );
    } catch (e) {
      UIUtil.showSnackbar(e.toString(), context);
      return;
    }

    Sheets.showAppHeightNineSheet(
      context: context,
      theme: theme,
      widget: SendConfirmSheet(tx: tx),
    );
  }

  static bool smallScreen(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return height < 667;
  }

  static String authMessage({
    required BuildContext context,
    required String action,
    required Amount amount,
    BigInt? fee,
  }) {
    final l10n = l10nOf(context);
    if (amount.raw != BigInt.zero) {
      final amountStr = NumberUtil.formatedAmount(amount);
      final amountConfirm = l10n.amountConfirm(amountStr, amount.symbolLabel);
      action += '\n$amountConfirm';
    }
    if (fee != null && fee != BigInt.zero) {
      final spectre = TokenInfo.spectre;
      final feeStr = NumberUtil.approxAmountRaw(fee, spectre.decimals);
      final feeConfirm = l10n.feeConfirm(feeStr, spectre.symbolLabel);
      action += '\n$feeConfirm';
    }
    return action;
  }
}
