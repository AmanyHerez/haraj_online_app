import 'package:flutter/material.dart';

import 'offer_wating_listview_item.dart';

class WaitingWidget extends StatelessWidget {
  const WaitingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return OfferWatingListViewItem();
      },
      itemCount: 6,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}
