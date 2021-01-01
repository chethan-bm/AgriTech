import 'package:micro_solutions/model/best_selling_model.dart';
// import 'package:micro_solutions/model/top_catageries_model.dart';
import 'package:micro_solutions/model/trending_model.dart';

List<TrendingModel> getTrendingData(){

  List<TrendingModel> trendingData = new List();
  TrendingModel trendingModel = new TrendingModel();

  //1
  trendingModel.imgAssetPath  = "assets/images/crop_monitoring.png";
  trendingModel.productName = "Area";
  trendingData.add(trendingModel);

  trendingModel = new TrendingModel();

  //2
  trendingModel.imgAssetPath  = "assets/images/crop_monitoring.png";
  trendingModel.productName = "Plant";
  trendingData.add(trendingModel);

  trendingModel = new TrendingModel();

  //3
  trendingModel.imgAssetPath  = "assets/images/crop_monitoring.png";
  trendingModel.productName = "Duration";
  trendingData.add(trendingModel);

  trendingModel = new TrendingModel();

  //4
  trendingModel.imgAssetPath  = "assets/images/crop_monitoring.png";
  trendingModel.productName = "Growth";
  trendingData.add(trendingModel);


  return trendingData;

}

List<BestSellingModel> getBestSellingData(){

  List<BestSellingModel> bestSellingData = new List();
  BestSellingModel bestSellingModel = new BestSellingModel();

  //1
  bestSellingModel.imgaeAssetPath = "assets/images/valve.png";
  bestSellingModel.title = "Valve 1";

  bestSellingData.add(bestSellingModel);
  bestSellingModel = new BestSellingModel();

  //2
  bestSellingModel.imgaeAssetPath = "assets/images/valve.png";
  bestSellingModel.title = "Valve 2";

  bestSellingData.add(bestSellingModel);
  bestSellingModel = new BestSellingModel();

  //3
  bestSellingModel.imgaeAssetPath = "assets/images/valve.png";
  bestSellingModel.title = "Valve 3";

  bestSellingData.add(bestSellingModel);

  bestSellingModel = new BestSellingModel();

  //4
  bestSellingModel.imgaeAssetPath = "assets/images/valve.png";
  bestSellingModel.title = "Valve 4";

  bestSellingData.add(bestSellingModel);

  return bestSellingData;

}


// List<TopCategoriesModel> getTopCategoriesData(){
//
//   List<TopCategoriesModel> topCategories = new List();
//   TopCategoriesModel topCategoriesModel = new TopCategoriesModel();
//
//   //1
//   topCategoriesModel.imgAssetPath = "assets/categorie.png";
//   topCategoriesModel.color1 = "8EA2FF";
//   topCategoriesModel.color2 = "557AC7";
//   topCategoriesModel.label = "Regular Gift";
//
//   topCategories.add(topCategoriesModel);
//   topCategoriesModel = new TopCategoriesModel();
//
//   //2
//   topCategoriesModel.imgAssetPath = "assets/boxgift.png";
//   topCategoriesModel.color1 = "50F9B4";
//   topCategoriesModel.color2 = "38CAE9";
//   topCategoriesModel.label = "Box Gift";
//
//   topCategories.add(topCategoriesModel);
//   topCategoriesModel = new TopCategoriesModel();
//
//   //1
//   topCategoriesModel.imgAssetPath = "assets/choclate.png";
//   topCategoriesModel.color1 = "FFB397";
//   topCategoriesModel.color2 = "F46AA0";
//   topCategoriesModel.label = "Regular Gift";
//
//   topCategories.add(topCategoriesModel);
//   topCategoriesModel = new TopCategoriesModel();
//
//   //1
//   topCategoriesModel.imgAssetPath = "assets/categorie.png";
//   topCategoriesModel.color1 = "8EA2FF";
//   topCategoriesModel.color2 = "557AC7";
//   topCategoriesModel.label = "Regular Gift";
//
//   topCategories.add(topCategoriesModel);
//   topCategoriesModel = new TopCategoriesModel();
//
//   //1
//   topCategoriesModel.imgAssetPath = "assets/categorie.png";
//   topCategoriesModel.color1 = "8EA2FF";
//   topCategoriesModel.color2 = "557AC7";
//   topCategoriesModel.label = "Regular Gift";
//
//   topCategories.add(topCategoriesModel);
//   topCategoriesModel = new TopCategoriesModel();
//
//   return topCategories;
//
// }