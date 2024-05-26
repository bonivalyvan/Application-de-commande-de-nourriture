import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_application/widgets/AppBarWidget.dart';

import '../widgets/CategoriesWidget.dart';
import '../widgets/DrawerWidget.dart';
import '../widgets/NewestItemsWidget.dart';
import '../widgets/PopularItemsWidget.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: ListView(
          children: [

            //Custom bar App Bar Widget

            AppBarWidget(),

            // Search

            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10 ,
                horizontal: 15,
              ),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0,3),
                    ),
                  ]
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Row(children: [
                    Icon(
                      CupertinoIcons.search,
                      color: Colors.red,
                    ),
                    Container(
                      height: 50,
                      width: 260,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Que Voulez-vous?",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.filter_list),
                    ],
                  ),
                ),
              ),
            ),

            //catégories

            Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 10,
              ),
              child: Text(
                "Catégories",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,

                ),
              ),
            ),

            //Categories widget

            CategoriesWidget(),

            Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 10,
              ),
              child: Text(
                "Favoris",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,

                ),
              ),
            ),

            //Popular Items Widget

            PopularItemsWidget(),

            //Newest items

            Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 10,
              ),
              child: Text(
                "Nouveautés",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),

            //Newest Item Widget

            NewestItemsWidget(),
          ],
        ),
        drawer: DrawerWidget(),
        floatingActionButton: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ]
          ),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, "cartPage");
            },
            child: Icon(
              CupertinoIcons.cart,
              size: 28,
              color: Colors.red,
            ),
            backgroundColor: Colors.white,
          ),
        ) ,
    );

  }
}