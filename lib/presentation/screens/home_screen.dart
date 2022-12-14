import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:saodi_task/business_logic/global_getx.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  GlobalGetx crt = Get.put(GlobalGetx());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: crt.currentIndex.value,
          selectedItemColor: Colors.red,
          showSelectedLabels: true,
          onTap: (index) {
            crt.changeBottom(index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_grocery_store_outlined,
              ),
              label: "Grocery",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.card_travel,
              ),
              label: "Card",
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Obx(
          () {
            return IndexedStack(
              index: crt.currentIndex.value,
              children: crt.screens,
            );
          },
        ),
      ),
    );
  }
}
