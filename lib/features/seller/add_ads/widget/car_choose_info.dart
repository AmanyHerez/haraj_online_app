import 'package:flutter/material.dart';
import '../../../../shared/assets_manager.dart';
import '../../../../shared/widget/filter_and_search_item_widget.dart';
import 'bottom_sheet/mechanical_statuses_bottomsheet.dart';

class CarInfo extends StatefulWidget {
  const CarInfo({super.key});

  @override
  State<CarInfo> createState() => _CarInfoState();
}

class _CarInfoState extends State<CarInfo> {
  late TextEditingController _carPrice;

  late TextEditingController _carClass;

  late TextEditingController _year;
  late TextEditingController _enginePower;

  late TextEditingController _distance;

  late TextEditingController _inColor;
  late TextEditingController _outColor;
  late TextEditingController _additionalInfo;

  @override
  void initState() {
    super.initState();
    _carPrice = TextEditingController();
    _carClass = TextEditingController();
    _year = TextEditingController();
    _enginePower = TextEditingController();
    _distance = TextEditingController();
    _inColor = TextEditingController();
    _outColor = TextEditingController();
    _additionalInfo = TextEditingController();
  }

  @override
  void dispose() {
    _carPrice.dispose();
    _carClass.dispose();
    _year.dispose();
    _enginePower.dispose();
    _distance.dispose();
    _inColor.dispose();
    _outColor.dispose();
    _additionalInfo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
          children:[
            FilterAndSearchItemWidget(
                title: 'سعر السيارة',
                leading: "",
                iconName: AssetsImage.price_icon,
                widget: MechanicalStatuesBottomSheet()),
            FilterAndSearchItemWidget(
                title: 'فئة السيارة',
                leading: "",
                iconName: AssetsImage.category,
                widget: MechanicalStatuesBottomSheet()),
            FilterAndSearchItemWidget(
                title: 'سنة التصنيع',
                leading: "",
                iconName: AssetsImage.year_manficutre,
                widget: MechanicalStatuesBottomSheet()),
            FilterAndSearchItemWidget(
                title: 'قوة المحرك ( بالحصان )',
                leading: "",
                iconName: AssetsImage.power_engine,
                widget: MechanicalStatuesBottomSheet()),
            FilterAndSearchItemWidget(
                title: 'كم كيلومتر قطعة السيارة',
                leading: "",
                iconName: AssetsImage.killometer,
                widget: MechanicalStatuesBottomSheet()),
            FilterAndSearchItemWidget(
                title: 'لون السيارة من الخارج',
                leading: "",
                iconName: AssetsImage.color,
                widget: MechanicalStatuesBottomSheet()),
            FilterAndSearchItemWidget(
                title: 'لون السيارة من الداخل',
                leading: "",
                iconName: AssetsImage.color_inside,
                widget: MechanicalStatuesBottomSheet()),

          ]

      ),
    );
  }
}
