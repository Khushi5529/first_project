// ignore_for_file: unnecessary_new

import 'package:my_app/model/mexican_model.dart';

List<MexicanModel> getmexican() {
  List<MexicanModel> mexican = [];
  MexicanModel mexicanModel = new MexicanModel();

  mexicanModel.name = "Burrito ";
  mexicanModel.image = "assets/images/burrito_image.png";
  mexicanModel.price = "\$50";
  mexican.add(mexicanModel);
  mexicanModel = new MexicanModel();



   mexicanModel.name = "Elote ";
  mexicanModel.image = "assets/images/elote_image.png";
  mexicanModel.price = "\$50";
  mexican.add(mexicanModel);
  mexicanModel = new MexicanModel();



   mexicanModel.name = "Enchiladas ";
  mexicanModel.image = "assets/images/enchildas_image.png";
  mexicanModel.price = "\$50";
  mexican.add(mexicanModel);
  mexicanModel = new MexicanModel();



   mexicanModel.name = "Fajitas ";
  mexicanModel.image = "assets/images/fajitas_image.png";
  mexicanModel.price = "\$50";
  mexican.add(mexicanModel);
  mexicanModel = new MexicanModel();



   mexicanModel.name = "Nachos";
  mexicanModel.image = "assets/images/nachos_image.png";
  mexicanModel.price = "\$50";
  mexican.add(mexicanModel);
  mexicanModel = new MexicanModel();



   mexicanModel.name = "Tacos ";
  mexicanModel.image = "assets/images/tacos_image.png";
  mexicanModel.price = "\$50";
  mexican.add(mexicanModel);
  mexicanModel = new MexicanModel();




   mexicanModel.name = " Mexican Roll ";
  mexicanModel.image = "assets/images/mexicanroll_image.png";
  mexicanModel.price = "\$50";
  mexican.add(mexicanModel);
  mexicanModel = new MexicanModel();

  return mexican;
}
