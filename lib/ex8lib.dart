library ex8lib;
// Question 1
List associate(List member) { 
List rep = new List();
Map sort = member.elementAt(0);
rep.add(sort);
for (int n = 1; n < member.length; n++) {
bool inserted = false;
sort = member.elementAt(n);
String last_name = sort["last_name"];
String first_name = sort["first_name"];
for (int n = 0; n < rep.length; n++) {
Map value = rep.elementAt(n);
String last_name = value["last_name"];
String first_name = value["first_name"];
if (last_name.compareTo(last_name) < 0 && inserted == false) {
rep.insert(n, sort);
inserted = true;
}
else if (last_name.compareTo(last_name) == 0 && inserted == false) {
for (int o = n; o < rep.length; o++) {
value = rep.elementAt(n);
last_name = value["last_name"];
first_name = value["first_name"];
if (last_name.compareTo(last_name) == 0 && first_name.compareTo(first_name) < 0 && inserted == false) {
rep.insert(o, sort);
inserted = true;
}
else if (last_name.compareTo(last_name) != 0 && inserted == false) {
rep.insert(o, sort);
inserted = true;
}
}
}
}
if (inserted == false) {
rep.add(sort);
}
}
return rep;
}
List associate2(List member, String letter) {
List returnList = new List();
for (int i = 0; i < member.length; i++) {
Map a = member.elementAt(i);
String last_name = a["last_name"];
if(last_name.substring(0, 1) == letter) {
returnList.add(a);
}
}
return returnList;
}
var member = [
{"associationName": "IS", "first_name": "Dzenan", "last_name": "Ridjanovic", "email": "dr@gmail.com"},
{"associationName": "IS", "first_name": "Robert", "last_name": "Nelson", "email": "rn@gmail.com"},
{"associationName": "CS", "first_name": "David", "last_name": "Curtis", "email": "d@gmail.com"},
];
print_row(var row){
for(var n in row){
print(n);
}
}
// Question 2
class Team {
String abreviation; 
String name;
String description;
var player_team = new List();
Team(var this.abreviation, var this.name, var this.description); 
String toString() {
return "List of associations : Association: ${abreviation} But : ${name}\n Description : ${description}";
}
addPlayers(Players players) { 
player_team.add(players);
}
deletePlayer(String email) {
for (var i = 0; i < Team.length; i++) {
if (Team[i].email == email) {
Team.removeAt(i);
}
}
}
editPlayer(String abreviation, String first_name, String last_name, String email) {
for (var i = 0; i < NHL_team.length; i++) {
if (Team[i]["First name"] == first_name && NHL_team[i]["Last name"] == last_name) {
Team[i]["Abreviation"] = abreviation;
Team[i]["First name"] = first_name;
Team[i]["Last Name"] = last_name;
Team[i]["Email"] = email;
}
}
}
}
// 2.1 Create a class model with members
class Player {
String abreviation;
String first_name;
String last_name;
String email;
var list_players = new List();
Player(String this.abreviation,
String this.first_name,
String this.last_name,
String this.email);
String toString() {
return "Players : Abreviation : ${abreviation}  First name: ${first_name}"
"Last name: ${last_name} email: ${email}";
}
// 2.2 Provide the maintenance of the model by providing additions, removals and updates of entities.
addTeam(Team team) {
list_players.add(team);
}
deleteTeam(Team team) {
for (var i = 0; i < list_players.length; i++) {
if (list_players[i].name == abreviation.name) {
list_players.removeAt(i);
}
}
}
}
