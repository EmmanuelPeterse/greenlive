import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:greenlive/repository/dashboard/dashboard_view_item/dashborditem/dashboarditem.dart';

import '../../connection/connectionitem/signup.dart';
import 'dashboard_view_item/dashborditem/menuitem.dart';

class DashboradView extends StatefulWidget {
  const DashboradView({super.key});

  @override
  State<DashboradView> createState() => _DashboradViewState();
}

class _DashboradViewState extends State<DashboradView> {

  late MaterialColor color = Colors.green;

  void selectIcon(){
    setState(() {
      
      color = Colors.green;
    });
  }

    int _selectIndex = 0;
    final pages =[

      const DashboardItem(),
      const MenuItem(),
      const SignUp()
    ];


 
  


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: pages[_selectIndex],


    


      bottomNavigationBar: FlashyTabBar(
      animationCurve: Curves.linear,
      showElevation: true,
      selectedIndex: _selectIndex,
      backgroundColor: const Color.fromARGB(255, 138, 219, 231),
      iconSize: 20,
      items: [
        // ignore: deprecated_member_use
        FlashyTabBarItem(icon: const FaIcon(FontAwesomeIcons.home, color: Color.fromARGB(255, 0, 0, 0),), title: const Text('Home')),
        FlashyTabBarItem(icon:  const FaIcon(FontAwesomeIcons.book,color:Color.fromARGB(255, 0, 0, 0),), title: const Text('learn')),
        FlashyTabBarItem(icon:  const FaIcon(FontAwesomeIcons.star,color: Color.fromARGB(255, 0, 0, 0),), title: const Text('favorite')),
        
        
      ], onItemSelected: (index) {
        setState(() {
          _selectIndex = index;
        });
      }
    ),

    );
  }
      
   
} 