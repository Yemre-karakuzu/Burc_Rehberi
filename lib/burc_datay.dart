import 'package:deneme/modeller/burc.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({required Burc this.secilenBurc, Key? key }) : super(key: key);

  @override
  _BurcDetayState createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {

  Color appbarRengi=Colors.transparent;
  late PaletteGenerator _generator;

  void initState(){
    super.initState();
    appbarRenginiBul();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: appbarRengi,
            flexibleSpace: FlexibleSpaceBar(
            title: Text(widget.secilenBurc.burcAdi + " Burcu Ve Özellikleri"),
              background: Image.asset('images/'+widget.secilenBurc.burcBuyukResim,fit: BoxFit.cover,),
            ),
          ),
          SliverToBoxAdapter(
            child:Container(
              margin:  EdgeInsets.all(16),
              padding:  EdgeInsets.all(8),
              child: SingleChildScrollView(
                child:Text(widget.secilenBurc.burcDetayi,style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
          ),
        ],
      )
    );
  }

  void appbarRenginiBul() async {
    _generator=await PaletteGenerator.fromImageProvider(AssetImage('images/${widget.secilenBurc.burcBuyukResim}'));
    appbarRengi=_generator.dominantColor!.color;
    setState(() {
      
    });
  }
}