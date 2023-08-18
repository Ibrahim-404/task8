class School {
  String? name, address, email;
  int? phone;
  List<String> girlsGroup, boysGroup;

  School({
    this.phone,
    this.email,
    required this.name,
    required this.address,
    required this.boysGroup,
    required this.girlsGroup,
  });
  //method (1)
  void addStudent(
      {required String userNmae, required String gender, required int age}) {
    if (((gender.toLowerCase() == 'male') && (age >= 6 && age <= 18))) {
      if (this.boysGroup.contains(userNmae)) {
        print("$userNmae is already exist\n");
      } else {
        this.boysGroup.add(userNmae);
      }
    } else if (((gender.toLowerCase() == 'female') &&
        (age >= 6 && age <= 18))) {
      if (this.girlsGroup.contains(userNmae)) {
        print("$userNmae is already exist\n");
      } else {
        this.girlsGroup.add(userNmae);
      }
    }
    if (gender.toLowerCase() != 'male' && gender.toLowerCase() != 'female') {
      print(
          "$gender is not correct gender please choose the correct gender male or female");
    }
    if (age < 6 || age > 18) {
      print(
          "This  age is not suitable in this school , the range of age is 6:18");
    }
  }

// method (2)
  void removeStudent({required String userName}) {
    bool removed = false;

    if (boysGroup.contains(userName.toLowerCase())) {
      boysGroup.remove(userName.toLowerCase());
      removed = true;
    }

    if (girlsGroup.contains(userName.toLowerCase())) {
      girlsGroup.remove(userName.toLowerCase());
      removed = true;
    }

    if (removed) {
      print("Removed successfully, $userName was exist in a group.");
    } else {
      print("$userName is not exist in this school!");
    }
  }

// method (3)
  void info() {
    if (this.phone == null && this.email == null) {
      print(
          " $name school in $address has girls group $girlsGroup and boys group $boysGroup ");
    }
  }
}
