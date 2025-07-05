// ignore_for_file: unnecessary_new, unused_import

import 'package:flutter/material.dart';
import 'package:my_app/model/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> category = [];
  CategoryModel categoryModel = new CategoryModel();
  categoryModel.name = "Pizza";
  categoryModel.image = "assets/images/pizza_image.png";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.name = "Burger";
  categoryModel.image = "assets/images/burgerr_image.png";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.name = "Chinese";
  categoryModel.image = "assets/images/chinese_image.png";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.name = "Mexican";
  categoryModel.image = "assets/images/mexicann_image.png";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  return category; 
}
