// ignore_for_file: unnecessary_new

import 'package:my_app/model/pizza_model.dart';

List<PizzaModel> getPizza() {
  List<PizzaModel> pizza = [];
  PizzaModel pizzaModel = new PizzaModel();

  pizzaModel.name = "Cheese Pizza";
  pizzaModel.image = "assets/images/pizzaa_image.png";
  pizzaModel.price = "\$50";
  pizza.add(pizzaModel);
  pizzaModel = new PizzaModel();

  pizzaModel.name = "  Peri Peri Pizza";
  pizzaModel.image = "assets/images/pizzaaa_image.png";
  pizzaModel.price = "\$80";
  pizza.add(pizzaModel);
  pizzaModel = new PizzaModel();


  pizzaModel.name = "Pepperoni Pizza";
  pizzaModel.image = "assets/images/farmhouse_image.png";
  pizzaModel.price = "\$60";
  pizza.add(pizzaModel);
  pizzaModel = new PizzaModel();


  pizzaModel.name = " Cheesy  Pizza";
  pizzaModel.image = "assets/images/pizzaaa_image.png";
  pizzaModel.price = "\$80";
  pizza.add(pizzaModel);
  pizzaModel = new PizzaModel();


pizzaModel.name = " American Pizza";
  pizzaModel.image = "assets/images/pizzaa_image.png";
  pizzaModel.price = "\$70";
  pizza.add(pizzaModel);
  pizzaModel = new PizzaModel();
  return pizza;
}
