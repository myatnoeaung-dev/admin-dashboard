import 'package:flutter/material.dart';

extension BreakpointUtils on BoxConstraints {
  bool get isTablet => maxWidth >= 730 && maxWidth < 1200;
  bool get isDesktop => maxWidth >= 1200;
  bool get isMobile => maxWidth < 730;
}

extension TypographyUtils on BuildContext {
  ThemeData get theme => Theme.of(this);
  BuildContext get context => this;

  TextTheme get textTheme => theme.textTheme;
}

extension BuildContextUtils on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  bool get isMobile => width < 730;
  bool get isTablet => width < 1200 && width >= 730;
  bool get isDesktop => width >= 1200;
}
