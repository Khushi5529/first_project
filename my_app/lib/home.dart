// ignore_for_file: non_constant_identifier_names, annotate_overrides, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:my_app/model/burger_model.dart';
import 'package:my_app/model/chinese_model.dart';
import 'package:my_app/model/mexican_model.dart';
import 'package:my_app/model/pizza_model.dart';
import 'package:my_app/service/burger_data.dart';
import 'package:my_app/service/category_data.dart';
import 'package:my_app/model/category_model.dart';
import 'package:my_app/service/chinese_data.dart';
import 'package:my_app/service/mexican_data.dart';
import 'package:my_app/service/pizza_data.dart';
import 'package:my_app/service/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = [];
  List<PizzaModel> pizza = [];
  List<BurgerModel> burger = [];
  List<ChineseModel> chinese = [];
  List<MexicanModel> mexican = [];
  String track = "0";

  @override
  void initState() {
    categories = getCategories();
    pizza = getPizza();
    burger = getburger();
    chinese = getChinese();
    mexican = getmexican();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 15.0, top: 40.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/logo_image.png",
                      height: 110,
                      width: 180,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(10),
                    child: Image.asset(
                      'assets/images/user_image.png',
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 28.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 20.0),
                    decoration: BoxDecoration(
                      color: Color(0xffececf8),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: " Search food item.... ",
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.search, color: Colors.white, size: 30.0),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Container(
              height: 80,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CategoryTile(
                    categories[index].name!,
                    categories[index].image!,
                    index.toString(),
                  );
                },
              ),
            ),

            track == "0"
                ? Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.7,
                          mainAxisSpacing: 20.0,
                          crossAxisSpacing: 10.0,
                        ),
                        itemCount: pizza.length,
                        itemBuilder: (context, index) {
                          return FoodTile(
                            pizza[index].name!,
                            pizza[index].image!,
                            pizza[index].price!,
                          );
                        },
                      ),
                    ),
                  )
                : track == "1"
                ? Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.69,
                          mainAxisSpacing: 20.0,
                          crossAxisSpacing: 10.0,
                        ),
                        itemCount: burger.length,
                        itemBuilder: (context, index) {
                          return FoodTile(
                            burger[index].name!,
                            burger[index].image!,
                            burger[index].price!,
                          );
                        },
                      ),
                    ),
                  )
                : track == "2"
                ? Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.69,
                          mainAxisSpacing: 20.0,
                          crossAxisSpacing: 10.0,
                        ),
                        itemCount: chinese.length,
                        itemBuilder: (context, index) {
                          return FoodTile(
                            chinese[index].name!,
                            chinese[index].image!,
                            chinese[index].price!,
                          );
                        },
                      ),
                    ),
                  )
                : track=="3"?  Expanded(
        child: Container(
          margin: EdgeInsets.only(right: 10.0),
          child: GridView.builder(
            padding: EdgeInsets.zero,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.69,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 10.0,
            ),
            itemCount: mexican.length,
            itemBuilder: (context, index) {
              return FoodTile(
                mexican[index].name!,
                mexican[index].image!,
                mexican[index].price!,
              );
            },
          ),
        ),
      ): Container()
          ],
        ),
      ),
    );
  }

  Widget CategoryTile(String name, String image, String categoryindex) {
    return GestureDetector(
      onTap: () {
        track = categoryindex.toString();
        setState(() {});
      },
      child: track == categoryindex
          ? Container(
              margin: EdgeInsets.only(right: 20.0, bottom: 10.0),
              child: Material(
                elevation: 3.0,
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),

                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        image,
                        height: 40,
                        width: 40,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: 10.0),

                      Text(name, style: AppWidget.WhiteTextFieldStyle()),
                    ],
                  ),
                ),
              ),
            )
          : Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              margin: EdgeInsets.only(right: 20.0, bottom: 10.0),

              decoration: BoxDecoration(
                color: Color(0xffececf8),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Image.asset(image, height: 40, width: 40, fit: BoxFit.cover),
                  SizedBox(width: 10.0),

                  Text(name, style: AppWidget.SimpleTextFieldStyle()),
                ],
              ),
            ),
    );
  }

  Widget FoodTile(String name, String image, String price) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      padding: EdgeInsets.only(left: 10.0, top: 10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              image,
              height: 150,
              width: 150,
              fit: BoxFit.fill,
            ),
          ),
          Text(name, style: AppWidget.BoldTextFieldStyle()),
          Text(price, style: AppWidget.PriceTextFieldStyle()),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}  