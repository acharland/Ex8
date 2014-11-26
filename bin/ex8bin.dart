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
void ex08_2(){ // Question 2 (Update)
print('');
print('Q2');
print('');
List canadiens = new List();

var team1 = new Team("MTL", "Montreal Canadiens", "Players"); // Debug Current Instruction Pointer ????
var player1 = new Player("MTL", "Carey", "Price", "cprice@canadiens.com");
canadiens.add(player1);
var player2 = new Player("MTL", "David", "Desharnais", "ddesharnais@canadiens.com");
canadiens.add(player2);
var player3 = new Player("MTL", "Tomas", "Plekanec", "tplekanec@canadiens.com");
canadiens.add(player3);

List bruins = new List();

var team2 = new Team("BOS", "Boston Bruins", "Players");
var player4 = new Player("BOS", "Zdeno", "Chara", "zchara@bruins.com");
bruins.add(player4);
var player5 = new Player("BOS", "Milan", "Lucic", "mlucic@bruins.com");
bruins.add(player5);
var player6 = new Player("BOS", "Patrice", "Bergeron", "pbergeron@nhl.com");
bruins.add(player6);
var player7 = new Player("BOS", "Brad", "Marchand", "bmarchand@bruins.com");
bruins.add(player7);
team2.addPlayer(player7);
team1.deletePlayer("bmarchand@bruins.com");
team2.editPlayer("BOS", "Zdeno", "Chara", "zchara@captain-bruins.com");

print('$team1 $canadiens');
print('');
print('$team2 $bruins');
}
void main() { // Inspiré d'un collègue, Monsieur Olivier Tremblay
ex08_1();
ex08_2();
}
