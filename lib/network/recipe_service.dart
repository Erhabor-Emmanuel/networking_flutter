import 'package:http/http.dart';

const String apiKey = 'e7795fb7f7a1d9cf2cd7db035039f8f9';
const String apiId = 'fb741089';
const String apiUrl = 'https://api.edamam.com/search';

class RecipeService{
  Future getData(String url) async{

    print('Calling url: $url');

    final response = await get(Uri.parse(url));

    if(response.statusCode == 200){
      return response.body;
    }else{
      print(response.statusCode);
    }
  }
  //TODO: Add getRecipes
  Future<dynamic> getRecipes(String query, int from, int to) async{

    final recipeData = await getData('$apiUrl?app_id=$apiId&app_Key=$apiKey&q=$query&from=$from&to=$to');

    return recipeData;
  }
}