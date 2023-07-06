import 'package:flutter/material.dart';
import 'package:haraj_app/shared/components/custom_divider.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../shared/font_manager.dart';
import '../../../shared/style/color_manager.dart';
class ThirdSectionFilterWidget extends StatefulWidget {
  const ThirdSectionFilterWidget({Key? key}) : super(key: key);

  @override
  State<ThirdSectionFilterWidget> createState() => _ThirdSectionFilterWidgetState();
}

class _ThirdSectionFilterWidgetState extends State<ThirdSectionFilterWidget> {
  SfRangeValues _values = SfRangeValues(40.0, 80.0);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        Text(
          'معدل استهلاك الوقود',
          style: TextStyle(
              fontFamily: FontConstants.fontFamily,
              color: AppColor.black),
        ),
        SizedBox(
          height: 20,
        ),
        SfRangeSlider(
          min: 0.0,
          max: 100.0,
          values: _values,
          interval: 20,
          showTicks: true,
          showLabels: true,
          enableTooltip: true,
          minorTicksPerInterval: 1,
          onChanged: (SfRangeValues values) {
            setState(() {
              _values = values;
            });
          },
        ),
        CustomeDivider(),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
          child: Column(
            children: [
              Text(
                'الكيلوميترات  ',
                style: TextStyle(
                    fontFamily: FontConstants.fontFamily,
                    color: AppColor.black),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        CustomeDivider(),
        Text(
          '  قوة المحرك',
          style: TextStyle(
              fontFamily: FontConstants.fontFamily,
              color: AppColor.black),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
