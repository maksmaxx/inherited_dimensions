import 'package:flutter/material.dart';

class PageSpecificDimensions extends InheritedWidget {
  @override
  final Widget child;
  final double value = 15;
  final double valueDueToContext;

  const PageSpecificDimensions({Key key, this.child, this.valueDueToContext}) : super(key: key, child: child);

  factory PageSpecificDimensions.initialize({@required BuildContext context, @required Widget child}) => PageSpecificDimensions(
        // valueDueToContext: getValueForScreenType(context: context, mobile: 15.0, tablet: 35.0)
        valueDueToContext: MediaQuery.of(context).size.width,
        child: child,
      );

  static PageSpecificDimensions of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<PageSpecificDimensions>();
  }

  @override
  bool updateShouldNotify(PageSpecificDimensions oldWidget) {
    return true;
  }
}
