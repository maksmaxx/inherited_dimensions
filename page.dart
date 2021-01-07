import 'page_dimensions.dart';

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageSpecificDimensions.initialize(
      context: context,
      child: PageChild(),
    );
  }
}

class PageChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageChild2();
  }
}

class PageChild2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageChild3();
  }
}

class PageChild3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: PageSpecificDimensions.of(context).valueDueToContext,
      height: PageSpecificDimensions.of(context).value,
    );
  }
}
