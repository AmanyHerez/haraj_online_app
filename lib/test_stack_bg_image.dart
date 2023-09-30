import 'package:flutter/material.dart';
import 'package:haraj_app/app/model/stander_model/general_name_model.dart';
import 'package:haraj_app/app/stander_cubit/stander_cubit.dart';

class CustomRadio extends StatefulWidget {
  @override
  createState() {
    return new CustomRadioState();
  }
}

class CustomRadioState extends State<CustomRadio> {
  List<RadioModel> sampleData = [];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // sampleData.add(new RadioModel(false, 'A', 1));
    // sampleData.add(new RadioModel(false, 'B', 2));
    // sampleData.add(new RadioModel(false, 'C', 3));
    // sampleData.add(new RadioModel(false, 'D', 4));
    // data.forEach((data) {
    //   MyModel model = MyModel(/* قم بتكوين النموذج هنا باستخدام البيانات من dataList */);
    //   modelList.add(model);
    // });
  }

  @override
  Widget build(BuildContext context) {
    List<Data>? dataList = [];
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ListItem"),
      ),
      body: new ListView.builder(
        itemCount: StanderCubit.get(context).listMechanicalStatuses!  .length,
        itemBuilder: (BuildContext context, int index) {
          // sampleData.add(RadioModel(false,  StanderCubit.get(context).listMechanicalStatuses![1].name ??
          //            " ",  StanderCubit.get(context).listMechanicalStatuses![1].id ?? 0));

          dataList!.forEach((data) {
            RadioModel model = RadioModel(
              false,
              StanderCubit
                  .get(context)
                  .listMechanicalStatuses![index].name.toString() ??
                  "Null ",
              StanderCubit
                  .get(context)
                  .listMechanicalStatuses![index].id ?? 0,
            );
            sampleData.add(model);
            print('////////////////////////');
            print(StanderCubit.get(context).listMechanicalStatuses);
            print('model');
            print(model);
          });
          print('////////////////////////');
          print('sampleData');
          // print('dataList ${dataList.length}');
          print(sampleData);
          print('////////////////////////');
          print('listData');

          // print('dataList ${dataList.length}');
          print(dataList.toString());
          return Row(
            children: [
              Text(StanderCubit.get(context).listMechanicalStatuses![index].id.toString() ?? "null"),
              Text(StanderCubit.get(context).listMechanicalStatuses![index].name.toString()),
            ],
          );
          // return new InkWell(
          //   //highlightColor: Colors.red,
          //   splashColor: Colors.blueAccent,
          //   onTap: () {
          //     setState(() {
          //       sampleData.forEach((element) => element.isSelected = false);
          //       sampleData[index].isSelected = true;
          //     });
          //   },
          //   child: new RadioItem(sampleData[index]),
          // );
        },
      ),
    );
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;

  RadioItem(this._item);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.all(15.0),
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new Container(
            height: 100.0,
            width: 100.0,
            child: new Center(
              child: new Text(_item.Text,
                  style: new TextStyle(
                      color: _item.isSelected ? Colors.white : Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 18.0)),
            ),
            decoration: new BoxDecoration(
              color: _item.isSelected ? Colors.blueAccent : Colors.transparent,
              border: new Border.all(
                  width: 1.0,
                  color: _item.isSelected ? Colors.blueAccent : Colors.grey),
              borderRadius: const BorderRadius.all(const Radius.circular(2.0)),
            ),
          ),
          new Container(
            margin: new EdgeInsets.only(left: 10.0),
            child: new Text(_item.Text),
          )
        ],
      ),
    );
  }
}

class RadioModel {
  bool isSelected;
  final String Text;
  final int id;

  RadioModel(this.isSelected, this.Text, this.id);
}
