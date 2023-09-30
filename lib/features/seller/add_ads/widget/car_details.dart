import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/auth_cubit/data/sp_helper.dart';
import '../../../../app/stander_cubit/general_cubit.dart';
import '../../../../app/stander_cubit/stander_cubit.dart';
import '../../../../modules/filter/bottom_sheet/type_fuel_bottom_sheet.dart';
import '../../../../shared/assets_manager.dart';
import '../../../../shared/widget/filter_and_search_item_widget.dart';
import 'bottom_sheet/mechanical_statuses_bottomsheet.dart';
import 'bottom_sheet/trademark_bottom_sheet.dart';

class CarDetails extends StatefulWidget {
  const CarDetails({super.key});

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

////
class _CarDetailsState extends State<CarDetails> {
  late TextEditingController _carName;

  late TextEditingController _tradeMark;

  late TextEditingController _bodyType;

  late TextEditingController _condition;

  late TextEditingController _specification;

  late TextEditingController _status;
  late TextEditingController _fuelType;

  @override
  void initState() {
    super.initState();

    _carName = TextEditingController();
    _tradeMark = TextEditingController();
    _bodyType = TextEditingController();
    _condition = TextEditingController();
    _specification = TextEditingController();
    _status = TextEditingController();
    _fuelType = TextEditingController();
  }

  @override
  void dispose() {
    _carName.dispose();
    _tradeMark.dispose();
    _bodyType.dispose();
    _condition.dispose();
    _specification.dispose();
    _status.dispose();
    _fuelType.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final stringCubit = BlocProvider.of<StringCubit>(context);
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          FilterAndSearchItemWidget(
              title: 'اسم السيارة',
              iconName: AssetsImage.modelCarIcon,
              leading: "",
              widget: MechanicalStatuesBottomSheet()),
          FilterAndSearchItemWidget(
              title: 'العلامة التجارية',
              leading: "",
              iconName: AssetsImage.trademark_icon,
              widget: TeadeMarkBottomSheet()),
          FilterAndSearchItemWidget(
              title: 'نوع جسم السيارة',
              leading: '${SpHelper.spHelper.getValue()}',
              iconName: AssetsImage.body_car_icon,
              widget: MechanicalStatuesBottomSheet()),

          BlocBuilder<StringCubit,String>(
            builder: (context, state) {
              return  FilterAndSearchItemWidget(
                  title: 'الحالة الميكانيكية للسيارة',
                  leading: "${stringCubit.select_value_MechanicalStatuses}",
                  iconName: AssetsImage.macCarIcon,
                  isvisble: stringCubit.select_value_MechanicalStatuses!=null,
                  widget: MechanicalStatuesBottomSheet());
            },

          ),
          FilterAndSearchItemWidget(
              title: 'المواصفات الاقليمية',
              leading: " ",
              iconName: AssetsImage.regional_specification_icon,
              widget: MechanicalStatuesBottomSheet()),
          FilterAndSearchItemWidget(
              title: 'حالة السيارة',
              leading: "",
              iconName: AssetsImage.status_car_icon,
              widget: MechanicalStatuesBottomSheet()),
          FilterAndSearchItemWidget(
              title: 'نوع الوقود',
              leading: '',
              iconName: AssetsImage.fuelIcon,
              widget: TypeFuelBottomSheet()),
        ],
      ),
    );
  }
}
