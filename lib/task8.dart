import 'school.dart';

void main() {
  List<String> group1 = [], group2 = [];
  School nc = School(
      name: 'ibrahim',
      address: 'cairo-El_shrouk city',
      boysGroup: group1,
      girlsGroup: group2);
  nc.addStudent(userNmae: 'haggag', gender: 'Male', age: 15); //test method 1
  nc.removeStudent(userName: 'mohamed'); //test method 2
  nc.info();
}
