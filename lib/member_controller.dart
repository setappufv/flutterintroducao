import 'package:flutter/foundation.dart';
import 'package:members_favorite/member_model.dart';

/// Classe responsável por ser a 'ponte' entre o modelo e a view
/// Essa classe estende o notificador de alterações
class MembersController extends ChangeNotifier{
  /// Lista de membros tipados com seu modelo
  /// Caso queira inicializar um membro como favorito basta adicionar o parâmetro
  /// isFavorite como true
  List<MemberModel> member = [
    MemberModel(name: 'Soares'),
    MemberModel(name: 'Alberto'),
    MemberModel(name: 'Brandão'),
    MemberModel(name: 'Naiara'),
    MemberModel(name: 'Lorrayne')
  ];
}