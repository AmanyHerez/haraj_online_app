import 'package:flutter/material.dart';

import 'app/stander_cubit/stander_cubit.dart';
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

    // sampleData.add(new RadioModel(false, 'A', 'April 18'));
    // sampleData.add(new RadioModel(false, 'B', 'April 17'));
    // sampleData.add(new RadioModel(false, 'C', 'April 16'));
    // sampleData.add(new RadioModel(false, 'D', 'April 15'));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ListItem"),
      ),
      body: new ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {

          sampleData.add(new RadioModel(false, StanderCubit.get(context).listMechanicalStatuses![0].id ?? 0, StanderCubit.get(context).listMechanicalStatuses![0].name.toString()));
          print('sampleData');
          print(sampleData);
          return Text('Amany');
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
            height: 50.0,
            width: 50.0,
            child: new Center(
              child: new Text(_item.id.toString(),
                  style: new TextStyle(
                      color:
                      _item.isSelected ? Colors.white : Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 18.0)),
            ),
            decoration: new BoxDecoration(
              color: _item.isSelected
                  ? Colors.blueAccent
                  : Colors.transparent,
              border: new Border.all(
                  width: 1.0,
                  color: _item.isSelected
                      ? Colors.blueAccent
                      : Colors.grey),
              borderRadius: const BorderRadius.all(const Radius.circular(2.0)),
            ),
          ),
          new Container(
            margin: new EdgeInsets.only(left: 10.0),
            child: new Text(_item.text),
          )
        ],
      ),
    );
  }
}

class RadioModel {
  bool isSelected;
  final int id ;
  final String text;

  RadioModel(this.isSelected, this.id, this.text);
}