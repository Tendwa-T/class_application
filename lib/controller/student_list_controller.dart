import 'package:get/get.dart';

class StudentController extends GetxController {
  final loadingStatus = true.obs;
  final studentList = [].obs;
  updateStudentList(list) => studentList.value = list;
  updateLoading(loading) => loadingStatus.value = loading;
}
