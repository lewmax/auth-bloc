import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../constants/theme/assets.gen.dart';

extension LocalizedBuildContext on BuildContext {
  S get loc => S.of(this);
}

extension LetExtension<T> on T {
  R let<R>(R Function(T) block) {
    return block(this);
  }
}
