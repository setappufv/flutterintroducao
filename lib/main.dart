import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:members_favorite/home.dart';
import 'package:members_favorite/member_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Com o Provider, ANTES do MaterialApp, colocamos o widget MultiProvider para que os providers
    //declarados na propriedade providers sejam acessíveis em todas as telas(arquivos)
    return MultiProvider(
      providers: [
        //Utilizamos o ChangeNotifierProvider para que as alterações de estado façam efeito na view do widget
        //É ALTAMENTE recomendável 'tipar' todos os widgets que trabalham com essa estrutura. Ex.:
        //ChangeNotifierProvider<MembersController> nos diz que é um provider que recebe alterações do tipo @MembersController
        ChangeNotifierProvider<MembersController>.value(value: MembersController(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(),
      ),
    );
  }
}