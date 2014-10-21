library ex8lib;
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
