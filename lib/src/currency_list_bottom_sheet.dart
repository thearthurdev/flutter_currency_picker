import 'package:currency_picker/src/currency.dart';
import 'package:flutter/material.dart';

import 'currency_list_view.dart';

void showCurrencyListBottomSheet({
  @required BuildContext context,
  @required ValueChanged<Currency> onSelect,
  double bottomSheetBorderRadius,
  List<String> currencyFilter,
}) {
  assert(context != null);
  assert(onSelect != null);
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (_) => _builder(context, onSelect, currencyFilter, bottomSheetBorderRadius),
  );
}

Widget _builder(
  BuildContext context,
  ValueChanged<Currency> onSelect,
  List<String> currencyFilter,
  double bottomSheetBorderRadius,
) {
  final device = MediaQuery.of(context).size.height;
  final statusBarHeight = MediaQuery.of(context).padding.top;
  final height = device - (statusBarHeight + (kToolbarHeight / 1.5));

  Color backgroundColor = Theme.of(context).bottomSheetTheme.backgroundColor;
  if (backgroundColor == null) {
    if (Theme.of(context).brightness == Brightness.light) {
      backgroundColor = Colors.white;
    } else {
      backgroundColor = Colors.black;
    }
  }

  return Container(
    height: height,
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(bottomSheetBorderRadius ?? 40.0),
        topRight: Radius.circular(bottomSheetBorderRadius ?? 40.0),
      ),
    ),
    child: CurrencyListView(
      onSelect: onSelect,
      currencyFilter: currencyFilter,
    ),
  );
}
