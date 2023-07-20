import 'package:auto_route/auto_route.dart';
import 'package:bord_project/src/router/router.dart';
import 'package:bord_project/src/screens/auth/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class TitleBottomSheet extends StatelessWidget {
  const TitleBottomSheet({
    super.key,
    required this.elements,
  });

  final List<Map<String, String>> elements;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: MediaQuery.of(context).size.height * 0.75,
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          const Icon(Icons.close, size: 28,),
          const Text('Ваш город', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
        TextButton(onPressed: () => context.router.push( const RegistrationRoute()), child: const Text('Готово'))],
         ),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20.0),
           child: Container(
            decoration: BoxDecoration(color: Colors.grey[200]),
            child: Row(
              children: const[
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.0),
                  child:SizedBox(
                    height: 30,
                    child: Icon(Icons.search),
                  ),
                ),
                Expanded(child: TextField(decoration: InputDecoration(border: InputBorder.none, hintText: 'Поиск по городам'),)),
              ],
            )),
         ),
         Expanded(
          
           child: GroupedListView<dynamic, String> (elements: elements,
         groupBy: (element) => element['group'],
          groupSeparatorBuilder: (value) =>  Container(width: double.infinity,
          padding: const EdgeInsets.only(left: 20, top: 14, bottom: 14), color: const Color.fromRGBO(250, 250, 250, 1), child: Text(value,style: TextStyle(fontSize: 16),),),
          
          itemBuilder: (context, element) => Container(
           color: const Color.fromRGBO(255, 255, 255, 1),
               height: 50,
               child: Padding(
                 padding:const EdgeInsets.only(left: 20, top: 15, bottom: 15),
                 child: Text(element['name'],
                   style: const TextStyle(fontSize: 16),
                   ),
               )) ,
           
           ),
         ),
      ],),
    );
  }
}