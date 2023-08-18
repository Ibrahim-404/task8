class Student {
  String name;
  int id;
  int level;
  double marks;
  String? email;
  int? phone;

  Student(
      {required this.name,
      required this.id,
      required this.level,
      required this.marks,
      this.phone,
      this.email});

  double bonus(double add) {
    this.marks += add;
    return marks;
  }

  double minus(double minus) {
    this.marks -= minus;
    return marks;
  }

  void info() =>
      print("my name is $name,my id is:$id,levl:$level,your makes:$marks\n");
}
