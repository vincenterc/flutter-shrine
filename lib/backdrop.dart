import 'package:flutter/material.dart';

import 'model/product.dart';

class Backdrop extends StatefulWidget {
  final Category currentCategory;
  final Widget frontLayer;
  final Widget backLayer;
  final Widget frontTitle;
  final Widget backTitle;

  const Backdrop({
    required this.currentCategory,
    required this.frontLayer,
    required this.backLayer,
    required this.frontTitle,
    required this.backTitle,
  });

  @override
  _BackdropState createState() => _BackdropState();
}

class _BackdropState extends State<Backdrop>
    with SingleTickerProviderStateMixin {
  final GlobalKey _backdropKey = GlobalKey(debugLabel: 'Backdrop');

  Widget _buildStack() {
    return Stack(
      key: _backdropKey,
      children: <Widget>[
        widget.backLayer,
        _FrontLayer(
          child: widget.frontLayer,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      brightness: Brightness.light,
      elevation: 0.0,
      titleSpacing: 0.0,
      leading: Icon(Icons.menu),
      title: Text('SHRINE'),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'search',
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.tune, semanticLabel: 'filter'),
          onPressed: () {},
        ),
      ],
    );

    return Scaffold(
      appBar: appBar,
      body: _buildStack(),
    );
  }
}

class _FrontLayer extends StatelessWidget {
  const _FrontLayer({
    Key? key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.0,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(46.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: child,
          ),
        ],
      ),
    );
  }
}
