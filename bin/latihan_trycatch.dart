import 'dart:convert';

import 'package:http/http.dart'as http;

void main ()async{
  Future tarikdata() async {
    var prabowo = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    );

    var data = jsonDecode(prabowo.body);
    return data;

   
  } 
   var data =await tarikdata();
   print('-----------------');
   print('Data Comments');
   print('-----------------');

   for (var i = 0; i < data.length; i++) {
    print('${data[i]['name']} | ${data[i]['email']}');
    print('-----------------');
   }
}