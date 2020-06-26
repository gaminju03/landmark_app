import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landmark_app/src/view/custom_items.dart';

class HomeScreen extends StatelessWidget {
 //const HomeScreen({Key key}) : super(key: key);

//Mapa investigar y agregar 

  final listalugar = [
    'Charley Rivers',
    'Chilkoot Trail',
    'Chicoteague',
    'Hidden Lake',
    'Icy Bay',
    'Lake McDonald',
    'Rainbow Lake',
    'Silver Salomon Creek',
    'St. Mary Lake',
    'Turtle Rock',
    'Twin Lake',
    'Umbagog',];

    final listaimagenes = [
    'lib/src/assets/charleyrivers.jpg',
    'lib/src/assets/chilkoottrail.jpg',
    'lib/src/assets/chincoteague.jpg',
    'lib/src/assets/hiddenlake.jpg',
    'lib/src/assets/icybay.jpg',
    'lib/src/assets/lakemcdonald.jpg',
    'lib/src/assets/rainbowlake.jpg',
    'lib/src/assets/silversalmoncreek.jpg',
    'lib/src/assets/stmarylake.jpg',
    'lib/src/assets/turtlerock.jpg',
    'lib/src/assets/twinlake.jpg',
    'lib/src/assets/umbagog.jpg'
    ];
    


  @override
  Widget build(BuildContext context) {
    return Material(
          child: CupertinoPageScaffold(
          child: CustomScrollView(
             slivers: <Widget>[
               CupertinoSliverNavigationBar(
                 largeTitle: Text('Landmarks'),
               ),
        

            SliverList(
              delegate: SliverChildBuilderDelegate(//regresa un widged con la lista de elementos que contenga
                (context,index){
                  return CustonItenList(
                    titulo: listalugar[index],
                    imagen:listaimagenes[index]
                  );
                 

                },
                childCount: listalugar.length,
              ),
            ),

   ],
          ),
        ),
    );
  }
}