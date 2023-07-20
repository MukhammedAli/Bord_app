import 'package:auto_route/auto_route.dart';
import 'package:bord_project/src/router/router.dart';
import 'package:bord_project/src/screens/dashboard/widgets/title_bottm_sheet.dart';
import 'package:bord_project/widgets/custom_checkbox.dart';
import 'package:bord_project/widgets/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class DashBoardScreen extends StatelessWidget {
   DashBoardScreen({super.key});

 final List<String> list = ['Алматы', 'Атырау', 'Актау', 'Актобе','Аксу','Баянауыл','Байкадам','Байконыр','Балкашино','Баканас'];
 final elements = [
  {'group': 'A', 'name': 'Алматы',},
  {'group': 'B', 'name': 'Баянауыл',},
  {'group': 'C', 'name': 'Актау',},
  {'group': 'A', 'name': 'Атырау',},
  {'group': 'B', 'name': 'Байкадам',},
  {'group': 'C', 'name': 'Алматы',},
  {'group': 'A', 'name': 'Актау',},
  {'group': 'B', 'name': 'Байконыр'},
  {'group': 'C', 'name': 'Алматы',},
  {'group': 'A', 'name': 'Актобе',},
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset('assets/BORD.png'),
            
            Padding(
              padding: const EdgeInsets.only(left: 32, top: 77),
              child: Column(
                children: [
                  
                Row(children: const [CustomCheckBox(),Text('Русский язык')],),
                
                Padding(
                  padding: const EdgeInsets.only(top:25.0),
                  child: Row(children: const  [CustomCheckBox(),Text('Қазақ тілі')],),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Row(children: const [CustomCheckBox(),Text('English')],),
                )],
              ),
            ),
            
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(26.0),
              child: MyButton(onPressed: () => showModalBottomSheet(context: context, builder: (context) => TitleBottomSheet(elements: elements)), text: 'Регистрация'),
            ),
            MyButton(onPressed: (){}, text: 'Войти как гость'),
            
            Padding(
              padding:const  EdgeInsets.symmetric(horizontal: 70),
              child: Row(
                children: [
                  const Text('У меня уже есть аккаунт'),
                  TextButton(
                    onPressed:  ()=> context.router.push(SignInRoute()), child: const Text('Войти'))
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  // Widget buildSheet(BuildContext con) => TitleBottomSheet(elements: elements);
}