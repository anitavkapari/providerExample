import 'package:commonwidget/AppTheme.dart';
import 'package:commonwidget/Buttons.dart';
import 'package:commonwidget/TextLine.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_item_widget/CounterModel.dart';
import 'package:provider/provider.dart';

class Menu_Item_Widget extends StatelessWidget {
  double _buttonWidth = 30;
  int noOfPersons=0;
  void _incrementCounter(BuildContext context) {
    Provider.of<CounterModel>(context, listen: false).incrementCounter();
  }
  void _decrementCounter(BuildContext context) {
    Provider.of<CounterModel>(context, listen: false).decrementCounter();
  }
  @override
  Widget build ( BuildContext context ) {
    var counter = Provider.of<CounterModel>(context).getCounter;

    return IntrinsicHeight (
      child:
      Container(
        margin: EdgeInsets.only(top: 20,right: 20,left: 20),
        padding: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: AppTheme.whiteText,
            borderRadius: BorderRadius.all(Radius.circular(10.0))

        ),
        child: Column(
         //mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 170.0,
                width: double.infinity,
                alignment: Alignment.topLeft,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0)),
                color: AppTheme.grey,
              ),
              child: Icon(Icons.close,
                  color: AppTheme.whiteText,
              size: 40,),
              ),
            buildTextLineWithColorLeft("Marghertai", 22, AppTheme.deepOrange1Splash),
            buildTextLineWithColorLeft("San Marzano tomatoes,mozzarela cheese fresh basil,salt and extra-virgin olove oil", 14, AppTheme.grey),
            buildTextLineWithColorLeft("Add on", 16, AppTheme.blackText),
            Container(
             child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               _button("Add Buffalo",context),
               _button("Add Chilli",context),
               _button("Dairy Free",context),
               ],
             ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _button("Add Chicken",context),
                  _button("Add Chilli",context),
                ],
              ),
            ),
            buildTextLineWithColorLeft("Special Instruction", 16, AppTheme.blackText),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10),
              child:TextField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(
                    ),
                    //labelText: 'Add a Note (extra sauce no options etc.)',
                    hintText: 'Add a Note (extra sauce no options etc.)'
                ),
              ),
            ),
            Container(
               margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                border: Border.all(color: AppTheme.grey, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(vertical: 5),
              width: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: _buttonWidth,
                    height: _buttonWidth,
                    child: FlatButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        _decrementCounter(context);
                      },
                      child: Text(
                        "-",
                          style: Theme.of(context).textTheme.title

                    ),
                    ),
                  ),


                  Text(
                      '$counter',
                      style: Theme.of(context).textTheme.bodyText1 ),

                 /* Consumer<CounterModel>(builder: (context, count, child){
                    return Text("${count.addQuantity}"
                      //style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    );
                  }),*/
                  SizedBox(
                    width: _buttonWidth,
                    height: _buttonWidth,
                    child: FlatButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        _incrementCounter(context);
                      },
                      child: Text(
                        "+",
                          style: Theme.of(context).textTheme.title
                      ),
                    ),
                  ),
                ],
              ),
            ),
        Container(
          padding: EdgeInsets.only(left:10.0,right: 10.0),
          child: deepOrangeButton("Add to Cart \$24.00",AppTheme.whiteText),
        ),
          ],
        ),
      ),
    );
  }
  tmpFunction(){
    print('Function on Click Event Called.');
    // Put your code here, which you want to execute on onPress event.
  }
  Center _button(String text,BuildContext context) {
    return Center(
        child: RaisedButton(
          child: Text(
            text,
              style: Theme.of(context).textTheme.button
            //style: TextStyle( color: grey),
          ),
          color: Colors.grey[200],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          onPressed: tmpFunction,
        ));
  }

}

