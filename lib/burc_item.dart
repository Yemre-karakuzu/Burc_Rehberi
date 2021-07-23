import 'package:deneme/burc_datay.dart';
import 'package:deneme/modeller/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc ,Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var MyTextStyle=Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BurcDetay(secilenBurc: listelenenBurc),),);
            },
            leading: Image.asset("images/"+listelenenBurc.burcKucukResim,),
            title: Text(listelenenBurc.burcAdi,style: MyTextStyle.headline5,),
            subtitle: Text(listelenenBurc.burcTarihi,style: MyTextStyle.subtitle1,),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        )
      ),
    );
  }
}