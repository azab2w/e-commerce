import 'package:e_commerce/data/ApiManager.dart';
import 'package:e_commerce/data/dataSourceContract/CategoriesDataSource.dart';

import '../../domain/model/Category.dart';


class CategoriesOnlineDataSource extends CategoriesDataSource{
  ApiManger apiManger;
  CategoriesOnlineDataSource(this.apiManger);
  @override
  Future<List<Category>?> getCategories() async{
    var response = await apiManger.getCategories();
   return response.data?.map((categoryDto) => categoryDto.toCategory()).toList();
  }
}