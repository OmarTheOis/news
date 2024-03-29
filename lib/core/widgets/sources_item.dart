import 'package:flutter/material.dart';

class TabItem extends StatefulWidget {
  final String source;
  const TabItem({super.key, required this.source});

  @override
  State<TabItem> createState() => _TabItemState();
}

class _TabItemState extends State<TabItem> {
  @override
  Widget build(BuildContext context) {
    var theme =Theme.of(context);
    return Container(
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(widget.source,style:theme.textTheme.bodyLarge ,)),
          ),
        ],
      ),
    );
  }
}