import 'package:flutter/material.dart';

import 'offer_reject_listview_item.dart';
import 'offer_wating_listview_item.dart';
class RejectWidget extends StatelessWidget {
  const RejectWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return OfferRejectListViewItem();
      },
      itemCount: 6,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}
