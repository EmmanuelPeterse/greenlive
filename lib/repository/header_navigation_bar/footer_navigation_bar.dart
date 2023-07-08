import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class FooterNavatorBar extends StatefulWidget {
  const FooterNavatorBar({super.key});

  @override
  State<FooterNavatorBar> createState() => _FooterNavatorBarState();
}

class _FooterNavatorBarState extends State<FooterNavatorBar> {
  @override
  Widget build(BuildContext context) {

    int _selectIndex = 0;






    return FlashyTabBar(
      animationCurve: Curves.linear,
      showElevation: false,
      selectedIndex: _selectIndex,
      iconSize: 30,
      items: [
        FlashyTabBarItem(icon: FaIcon(FontAwesomeIcons.home), title: Text('Home')),
        FlashyTabBarItem(icon:  FaIcon(FontAwesomeIcons.home), title: Text('Boock')),
        FlashyTabBarItem(icon:  FaIcon(FontAwesomeIcons.home), title: Text('Persone')),
        
        
      ], onItemSelected: (index) {
        setState(() {
          _selectIndex = index;
        });
      });
  }

}