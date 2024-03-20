class StudentModel {
  final id;
  final String sname;
  final String admissionNum;

  StudentModel(
      {required this.id, required this.sname, required this.admissionNum});

  factory StudentModel.fromJson(Map<String, dynamic> json) {
    return StudentModel(
      id: json['id'] ?? " ",
      sname: json['sname'] ?? " ",
      admissionNum: json['admissionNum'] ?? " ",
    );
  }
}
