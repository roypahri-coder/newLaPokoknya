import 'dart:convert';

import 'package:http/http.dart'as http;

void main ()async{
  Future<List<dynamic>> tarikdata() async {
    try {
      var prabowo = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'),
    );

    var data = jsonDecode(prabowo.body);
    return data;


    }
    catch(e){}
    var prabowo = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'),
    );

    var data = jsonDecode(prabowo.body);
    return data;

   
  } 
   var data =await tarikdata();
   print('-----------------');
   print('Data Comments');
   print('-----------------');

  //  for (var i = 0; i < data.length; i++) {
  //   print('${element['name']} | ${element['email']}');
  //   print('-----------------');

   // data,foreach()
   }
