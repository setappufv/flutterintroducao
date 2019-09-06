import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:members_favorite/member_controller.dart';
import 'package:members_favorite/member_model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
   /// @MembersController membersC
   /// Função que recebe o controlador de membros e cria uma lista com todos os membros declarados no controlador
   
  _buildList(MembersController membersC) {
    return ListView.builder(
      itemCount: membersC.member.length, //Tamanho da minha lista de membros (array de membros)
      itemBuilder: (context, index) {
        return _buildItem(membersC.member[index], membersC); //Retorna um widget (ListTile) de um membro específico passando 
        //o índice desse membro no controlador e a classe de controlador.
      },
    );
  }


   /// @MembersController members
   /// @MemberModel model
   /// Função que representa um item da lista criada em [_buildList(membersC)]
  _buildItem(MemberModel model, MembersController members) {
    return ListTile(
      title: Text(model.name),
      //Verifica se o membro é favorito utilizando ternária e incluindo os ícones de estrela dependendo do seu estado
      //Se for favorito a estrela tem cor amarela, se não ela tem apenas as bordas.
      trailing: model.isFavorite
          ? Icon(
              Icons.star,
              color: Colors.yellow,
            )
          : Icon(Icons.star_border),
      onTap: () {
        model.isFavorite = !model.isFavorite; //Troca de estado
        members.notifyListeners(); //Notifica o provider para recriar widget
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Teste'),
      ),
      //Um consumer controla a construção de um widget de acordo com seu provider tendo como parâmetro um contexto,
      //uma classe e um widget no seu construtor
      body: Consumer<MembersController>(builder: (context, memberController, widget) {
        return _buildList(memberController);
      }),
    );
  }
}
