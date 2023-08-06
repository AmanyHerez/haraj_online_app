import 'package:flutter/material.dart';
import 'package:haraj_app/shared/components/custom_divider.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../shared/assets_manager.dart';
import '../../../shared/font_manager.dart';
import '../../../shared/style/color_manager.dart';

class ThirdSectionFilterWidget extends StatefulWidget {
  const ThirdSectionFilterWidget({Key? key}) : super(key: key);

  @override
  State<ThirdSectionFilterWidget> createState() =>
      _ThirdSectionFilterWidgetState();
}

class _ThirdSectionFilterWidgetState extends State<ThirdSectionFilterWidget> {
  SfRangeValues _values = SfRangeValues(40.0, 80.0);
  double _seatsNumber = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'معدل استهلاك الوقود',
          style: TextStyle(
              fontFamily: FontConstants.fontFamily, color: AppColor.black),
        ),
        SizedBox(
          height: 20,
        ),
        //
        // to do Slider

        SfSlider(
          thumbIcon: CustomSvgImage(
            imageName: AssetsImage.thumb,
          ),
          min: 2,
          max: 50,
          value: _seatsNumber,
          interval: 2,
          activeColor: AppColor.primary,
          minorTicksPerInterval: 1,
          onChanged: (dynamic value) {
            setState(() {
              _seatsNumber = value;
            });
          },
          enableTooltip: true,
          shouldAlwaysShowTooltip: true,
          tooltipShape: SfRectangularTooltipShape(),
          overlayShape: SfOverlayShape(

          ),
        ),
        //
        CustomeDivider(),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
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
              fontFamily: FontConstants.fontFamily, color: AppColor.black),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
