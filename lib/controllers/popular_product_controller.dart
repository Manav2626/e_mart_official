import 'package:e_mart/data/repository/popular_product_repo.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class PopularProductController extends GetxService {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList =>_popularProductList;

  Future<void> getPopularPrductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      _popularProductList = [];
      // _popularProductList.addAll();
      update();
    } else {

    }
  }

//aa nichenu error kadhva add karyu chh
  void update() {}
}
