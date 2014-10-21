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
test(var first_name, var last_name, var member){
for(var n in member){
if(n['first_name'] == first_name && n['last_name'] == last_name)
return true;
}
return false;
}
add(var association_name, var first_name, var last_name, var email, var member){
member.add({
'associationn_name': association_name,
'first_name': first_name,
'last_name': last_name,
'email': email,
});
Sorting1(var member){
member.sort((x, y) => x['last_name'].compareTo(y['first_name']));
print('The list with the addition of Mathieu Martin:');
print('');
print_row(member);
}
Sorting1(member);
}
add('CS', 'Mathieu', 'Martin', 'md@gmail.com', member);
remove(var association_name, var first_name, var last_name, var email, var member){
member.remove({
'association_name': association_name,
'first_name': first_name,
'last_name': last_name,
'email': email,
});
Sorting1(var member){
member.sort((x, y) => x['last_name'].compareTo(y['first_name']));
print('The list with the addition of Mathieu Martin:');
print('');
print_row(member);
}
Sorting1(member);
}
}
// Unable to do the removal and the update parts.


void main() { // Inspiré d'un collègue, Monsieur Olivier Tremblay
ex08_1(); 
ex08_2(); 
}