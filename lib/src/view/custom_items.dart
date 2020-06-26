import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustonItenList extends StatelessWidget {
  const CustonItenList({
    Key key,
    this.titulo,
    this.imagen
    }) :super(key: key);
final String titulo;
final String imagen;

  @override
  Widget build(BuildContext context) {
    return 
    
    
    ListTile(
                      
                      trailing: Icon(CupertinoIcons.right_chevron),
                      title: Text(titulo),
                     // leading: Icon(CupertinoIcons.add_circled_solid),
                      leading: Image.asset(imagen),
                      
                    );


                    
  }
}