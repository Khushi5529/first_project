// ignore_for_file: unnecessary_new

import 'package:my_app/model/chinese_model.dart';

List<ChineseModel> getChinese() {
  List<ChineseModel> chinese = [];
  ChineseModel chineseModel = new ChineseModel();

  chineseModel.name = "Chilli Patato";
  chineseModel.image = "assets/images/chillipatato_image.png";
  chineseModel.price = "\$50";
  chinese.add(chineseModel);
  chineseModel = new ChineseModel();

  chineseModel.name = "Manchurian";
  chineseModel.image = "assets/images/manchurian_image.png";
  chineseModel.price = "\$50";
  chinese.add(chineseModel);
  chineseModel = new ChineseModel();

  chineseModel.name = "Spring Roll";
  chineseModel.image = "assets/images/springroll_image.png";
  chineseModel.price = "\$50";
  chinese.add(chineseModel);
  chineseModel = new ChineseModel();

  chineseModel.name = "Momos";
  chineseModel.image = "assets/images/momos_image.png";
  chineseModel.price = "\$50";
  chinese.add(chineseModel);
  chineseModel = new ChineseModel();

  chineseModel.name = "Hakka Noodles";
  chineseModel.image = "assets/images/chinesee_image.png";
  chineseModel.price = "\$50";
  chinese.add(chineseModel);
  chineseModel = new ChineseModel();

  return chinese;
}
