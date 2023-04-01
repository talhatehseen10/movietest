import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poshtest/services/api/api_constants.dart';
import 'package:poshtest/services/api/base_client.dart';
import 'package:poshtest/views/favorites/controllers/favorite_screen_controller.dart';
import 'package:poshtest/views/home/models/movie_name_modal.dart';

class HomeScreenController extends GetxController {
  final favoriteController = Get.put(FavoriteScreenController());
  late final GlobalKey<ScaffoldState> scaffoldKey;
  late TextEditingController searchTextController;
  RxList<MovieNameModel> movieNameList = RxList<MovieNameModel>();
  RxList<MovieNameModel> favList = RxList<MovieNameModel>();
  RxBool isSearch = true.obs;
  RxBool iconRefresh = true.obs;
  RxBool isCustomerSelected = true.obs;
  RxList selectedCategory = [].obs;
  RxList selectedProducts = [].obs;
  var filterName;

  Future<void> getMovieList(String name) async {
    try {
      await BaseClient.safeApiCall(
        ApiConstants.BASE_URL,
        RequestType.get,
        headers: await BaseClient.generateHeaders(),
        queryParameters: {
          's': name,
        },
        onSuccess: (response) {
          print("++++++++++++Success");
          if (response.data["Response"] == "True") {
            print("If");
            addMovieList(response.data["Search"]);
            isSearch.value = false;
          } else {
            isSearch.value = true;
            movieNameList.clear();
          }
        },
        onError: (e) {
          // ignore: avoid_print
          print(e);
        },
      );
    } catch (error) {
      print(error);
    }
  }

  // Future<void> getSearchProducts(String value) async {
  //   try {
  //     // log.e('itemCount : ${ApiConstants.ITEM_COUNT}, offset : $pageKey');
  //     List<String> newItems = (await BaseClient.safeApiCall(
  //       ApiConstants.GET_SEARCH_PRODUCT_LIST,
  //       RequestType.get,
  //       headers: {
  //         'Authorization': 'Bearer ${await AuthManager.instance.token}',
  //         'Content-Type':
  //             "application/json; odata.metadata=minimal; odata.streaming=true",
  //         'Transfer-Encoding': "chunked",
  //         'Connection': 'keep-alive',
  //         'OData-Version': '4.0',
  //         'api-supported-versions': '1.0,2.0',
  //         'Strict-Transport-Security': 'max-age=15724800; includeSubDomains',
  //       },
  //       queryParameters: {
  //         '\$filter': "contains(tolower(ProductName),'$value')",
  //       },
  //       onSuccess: (response) {
  //         // print(response.data);
  //         isSearch.value = true;
  //         filterName = SearchProduct.fromJson(response.data);
  //         print(filterName.value);
  //         isSearch.value = false;
  //       },
  //       onError: (e) {
  //         // ignore: avoid_print
  //         print(e);
  //       },
  //     ));

  //     //final isLastPage = newItems.length < ApiConstants.ITEM_COUNT;
  //     //   if (isLastPage) {
  //     //     productsPaginationKey.appendLastPage(newItems);
  //     //   } else {
  //     //     final nextPageKey = pageKey + newItems.length;
  //     //     productsPaginationKey.appendPage(newItems, nextPageKey);
  //     //   }
  //   } catch (error) {
  //     //productsPaginationKey.error = error;
  //   }
//  }

  void addFav(MovieNameModel movieNameModel) {
    favoriteController.addFav(movieNameModel);
    
  }

  void clearMovieList() {
    isSearch.value = true;
    searchTextController.clear();
    movieNameList.clear();
  }

  void addMovieList(var response) {
    movieNameList.clear();
    for (var data in response) {
      movieNameList.add(MovieNameModel.fromJson(data));
    }
    print("++++++++++++++++++++++++++");
    print(movieNameList.length);
    isSearch.value = false;
  }

  @override
  void onInit() {
    scaffoldKey = GlobalKey<ScaffoldState>();
    searchTextController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    searchTextController.dispose();
    super.dispose();
  }
}
