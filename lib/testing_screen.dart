import 'package:flutter/material.dart';

class ExpandableContainer extends StatefulWidget {
  @override
  _ExpandableContainerState createState() => _ExpandableContainerState();
}

class _ExpandableContainerState extends State<ExpandableContainer> {
  List<Item> items = [
    Item(
      headerValue: 'Section 1',
      expandedValue: 'Content for Section 1',
      isExpanded: false,
    ),
    Item(
      headerValue: 'Section 2',
      expandedValue: 'Content for Section 2',
      isExpanded: false,
    ),
    Item(
      headerValue: 'Section 3',
      expandedValue: 'Content for Section 3',
      isExpanded: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10),
        child: ExpansionPanelList(
          elevation: 1,
          expandedHeaderPadding: EdgeInsets.all(0),
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              items[index].isExpanded = !isExpanded;
            });
          },
          children: items.map<ExpansionPanel>((Item item) {
            return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text(item.headerValue),
                );
              },
              body: ListTile(
                title: Text(item.expandedValue),
              ),
              isExpanded: item.isExpanded,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class Item {
  Item({
    required this.headerValue,
    required this.expandedValue,
    required this.isExpanded,
  });

  String headerValue;
  String expandedValue;
  bool isExpanded;
}
