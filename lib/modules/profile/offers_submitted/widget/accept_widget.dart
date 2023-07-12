import 'package:flutter/material.dart';

import 'offer_accept_listview_item.dart';
import 'offer_wating_listview_item.dart';
class AcceptWidget extends StatelessWidget {
  const AcceptWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return OfferAcceptListViewItem();
      },
      itemCount: 6,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}
