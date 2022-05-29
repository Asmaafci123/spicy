import 'package:flutter/material.dart';
import 'package:spicy/presentation-layer/custom_widgets/title-of-appbar.dart';

import '../../size.dart';
class StoreAppBar extends StatefulWidget implements PreferredSizeWidget{
  StoreAppBar({Key? key}) : preferredSize = Size.fromHeight(60.0), super(key: key);

  @override
  final Size preferredSize;
  @override
  State<StoreAppBar> createState() => _StoreAppBarState();
}

class _StoreAppBarState extends State<StoreAppBar> {
  final Size preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFFFFFF),
      leadingWidth: SizeConfig.defaultSize! * 5,
      leading: IconButton(
        padding: EdgeInsets.all(SizeConfig.defaultSize! * 0.7),
        constraints: BoxConstraints(),
        onPressed: () {},
        icon: Icon(
          Icons.arrow_back_rounded,
          color: const Color(0xFF213955),
        ),
        iconSize: SizeConfig.defaultSize! * 2.5,
      ),
      centerTitle: true,
      title:TitleOfAppBar(title:'Store'),
    );
  }
}
