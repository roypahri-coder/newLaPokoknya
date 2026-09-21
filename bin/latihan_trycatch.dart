import 'dart:convert';

import 'package:http/http.dart'as http;

void main ()async{
  // Future<List<dynamic>> tarikdata() async {
  //   try {
  //     var prabowo = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'),
  //   );

  //   var data = jsonDecode(prabowo.body);
  //   return data;


  //   }
  //   catch(e){}
  //   var prabowo = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'),
  //   );

  //   var data = jsonDecode(prabowo.body);
  //   return data;

   
  // } 
  //  var data =await tarikdata();
  //  print('-----------------');
  //  print('Data Comments');
  //  print('-----------------');

  //  for (var i = 0; i < data.length; i++) {
  //   print('${element['name']} | ${element['email']}');
  //   print('-----------------');

   // data,foreach()

   Future<List<dynamic>> tarikDataProduk() async {
    try {
      var response = await http.get(
        Uri.parse('https://dummyjson.com/products'),
      );
      if (response.statusCode == 200) {
        var dataProduk = jsonDecode(response.body);
        // dummyjson membungkus daftar produk di dalam key 'products'
        return dataProduk['products'];
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }

  List<dynamic> produkList = await tarikDataProduk();

  print('\n------------------------------------------------------------');
  print('Data Products (dummyjson.com)');
  print('------------------------------------------------------------');

  // Menampilkan id, title, dan price untuk setiap produk
  produkList.forEach((produk) {
    print('ID    : ${produk['id']}');
    print('Title : ${produk['title']}');
    print('Price : \$${produk['price']}');
    print('------------------------------------------------------------');
  });




   }
