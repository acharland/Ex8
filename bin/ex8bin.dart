import 'package:ex8/ex8lib.dart';

void ex08_1(){
var a1 = ('${associate(member)}');
var letter = "R";
var a2 = associate2(member, ('${letter}'));
print('Q1');
print('');
print('''P1: Create a list of associations of members, where a member is represented as a map with
the following keys: firstName, lastName and email. Sort the list of members of a given
association first by the last name, then by the first name.''');
print('');
print('$a1');
print('');
print('''P2: Provide a way to obtain only members of all associations whose last name starts with
a given letter.''');
print('');
print(' The association that starts by $letter is: $a2');
}
void ex08_2(){
  print('');
  print('Q2');
  print('');
  List canadiens = new List();
  var team1 = new Team("MTL", "Montreal Canadiens", "Players");
  var player1 = new Player("MTL", "Carey", "Price", "cprice@canadiens.com");
  canadiens.add(player1);
  var player2 = new Member("MTL", "David", "Desharnais", "ddesharnais@canadiens.com");
   canadiens.add(player2);
  var player3 = new Member("MTL", "Tomas", "Plekanec", "tplekanec@canadiens.com");
    canadiens.add(player3);
  List bruins = new List();
  var team2 = new Team("BOS", "Boston Bruins", "Players");
   var player4 = new Member("BOS", "Zdeno", "Chara", "zchara@bruins.com");
   bruins.add(player4);
   var player5 = new Member("BOS", "Milan", "Lucic", "mlucic@bruins.com");
    bruins.add(player5);
   var player6 = new Member("BOS", "Patrice", "Bergeron", "pbergeron@nhl.com");
     bruins.add(player6);
// 2.2 Provide the maintenance of the model by providing additions, removals and updates of entities.
  var player7 = new Member("BOS", "Brad", "Marchand", "bmarchand@bruins.com");
  bruins.add(player7);
  team2.addMember(player7);
  team1.deleteMember(Marchand); //ne semble pas fonctionner??
  team2.editMember("BOS", "Zdeno", "Chara", "zchara@captain-bruins.com"); 
  
  print('$team1 $canadiens');
 print('');
 print('$team2 $bruins');
 } 

void main() { // Inspiré d'un collègue, Monsieur Olivier Tremblay
ex08_1(); 
ex08_2(); 
}
