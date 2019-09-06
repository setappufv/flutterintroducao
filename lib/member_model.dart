/// Modelo (objeto) que abstrai os membros
/// @name Nome do membro
/// @isFavorite é favorito
class MemberModel {
  String name;
  bool isFavorite;
  /// Classe construtora do modelo tendo seus parâmetros opcionais em sua chamada
  /// e seu atributo @isFavorite como falso
  MemberModel({this.name, this.isFavorite = false});
}


