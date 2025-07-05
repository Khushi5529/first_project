// ignore_for_file: unnecessary_new

import 'package:my_app/model/burger_model.dart';

List<BurgerModel> getburger() {
  List<BurgerModel> burger = [];
  BurgerModel burgerModel = new BurgerModel();

  burgerModel.name = "Classic burger ";
  burgerModel.image = "assets/images/burger_image.png";
  burgerModel.price = "\$50";
  burger.add(burgerModel);
  burgerModel = new BurgerModel();

  burgerModel.name = "Veggies Burger";
  burgerModel.image = "assets/images/burgers_image.png";
  burgerModel.price = "\$50";
  burger.add(burgerModel);
  burgerModel = new BurgerModel();

  burgerModel.name = "Pizza Burger";
  burgerModel.image = "assets/images/burgerrr_image.png";
  burgerModel.price = "\$50";
  burger.add(burgerModel);
  burgerModel = new BurgerModel();

  burgerModel.name = "Cheese Burger";
  burgerModel.image = "assets/images/classiccheese_image.png";
  burgerModel.price = "\$50";
  burger.add(burgerModel);
  burgerModel = new BurgerModel();

  burgerModel.name = "Smash Burger";
  burgerModel.image = "assets/images/classicamerican_image.png";
  burgerModel.price = "\$50";
  burger.add(burgerModel);
  burgerModel = new BurgerModel();

  burgerModel.name = "Chicken Burger";
  burgerModel.image = "assets/images/chickenburger_image.png";
  burgerModel.price = "\$50";
  burger.add(burgerModel);
  burgerModel = new BurgerModel();

  return burger;
}
