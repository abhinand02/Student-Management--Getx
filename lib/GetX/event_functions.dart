
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:students_record/db/db.dart';
import 'model/studentModel.dart';


class FormController extends GetxController{

  final formModel = StudModel().obs;
  final editModel = EditAccess().obs;

  getFieldValues( Uint8List? img){
    
    formModel.update((val) { 
      val?.image=img;
    });
  }

  permission(bool newValue){
    editModel.update((val) {
      val?.isEditable = newValue;
    });
  }
}


class ListController extends GetxController{

  final studentList = <StudentModel>[].obs;

 @override
  void onReady() {
   studentList.clear();
   studentList.addAll(studentDb.values); 
   
   update();
}

deleteStudent(int id, int index) async{
 await studentDb.delete(id);
 studentList.removeAt(index);

 update();
}

 addStudent(StudentModel value) async{
   final _id = await studentDb.add(value);
   value.id =_id;
   final id =value.id;
   studentDb.put(id,value);

  onReady();
  update();
}
 updateStudentDetails( StudentModel n,int id, int index) async{
await studentDb.put(id,n);
// getAllStudents();

onReady();
update();
}

imagePick() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) {
      return;
    }
    final temp = await image.readAsBytes();

    // print('printing file format image  $temp');
    Get.find<FormController>().getFieldValues(temp);
  }
}
