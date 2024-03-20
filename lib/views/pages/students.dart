import 'dart:convert';

import 'package:class_application/configs/constants.dart';
import 'package:class_application/controller/student_list_controller.dart';
import 'package:class_application/models/student_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

var icon = [Icons.abc, Icons.abc_rounded];

class Student extends StatelessWidget {
  Student({super.key});
  StudentController studentController = Get.put(StudentController());

  @override
  Widget build(BuildContext context) {
    getStudentList();
    return Column(
      children: [
        Container(
          height: 300,
          child: Obx(
            () => studentController.loadingStatus.value
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: InkWell(
                          splashColor: appWhite,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: primaryColor),
                              borderRadius: BorderRadius.circular(10),
                              color: primaryColor.withOpacity(0.5),
                            ),
                            height: 200,
                            width: 300,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.dangerous,
                                  size: 60,
                                ),
                                Text(
                                  '${studentController.studentList[index].sname}',
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: studentController.studentList.length,
                  ),
          ),
        )
      ],
    );
  }

  Future<void> getStudentList() async {
    http.Response response;
    response =
        await http.get(Uri.parse("https://churchapp.co.ke/students/read.php"));
    if (response.statusCode == 200) {
      var studentResponse = json.decode(response.body);
      var studentData = studentResponse['data'];
      var students =
          studentData.map((std) => StudentModel.fromJson(std)).toList();
      studentController.updateStudentList(students);
    } else {
      Get.snackbar("Server Error", "${response.statusCode}");
    }
    studentController.updateLoading(false);
  }
}
