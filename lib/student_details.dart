import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:students_record/GetX/event_functions.dart';
import 'package:students_record/constants/styles.dart';
import 'db/db.dart';

class StudentDetails extends StatelessWidget {
  final String name,sclass,phnNumber,age;
  final int index;
  final int id;
  final Uint8List image;

  StudentDetails(
      {super.key,
      required this.index,
      required this.image,
      required this.id,
      required this.name,
      required this.sclass,
      required this.phnNumber,
      required this.age});

  String imagePath = 'images/default_person_img.png';
  Uint8List? _image;

  late TextEditingController nameController;
  late TextEditingController phnNumberController;
  late TextEditingController ageController;
  late TextEditingController classController;

  bool textEdit = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SafeArea(
        child: GetBuilder<ListController>(
            init: ListController(),
            builder: (controller) {
              final data = controller.studentList[index];

              nameController = TextEditingController(text: data.name);

              phnNumberController = TextEditingController(text: data.phnnumber);

              classController = TextEditingController(text: data.standard);

              ageController = TextEditingController(text: data.age);

              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    profileImage(controller),
                    const SizedBox(
                      height: 20,
                    ),
                    inPutField(
                      keyBoardType: TextInputType.text,
                      formfieldheading: 'Student Name',
                      controller: nameController,
                    ),
                    inPutField(
                      keyBoardType: TextInputType.number,
                      formfieldheading: 'Phone Number',
                      controller: phnNumberController,
                    ),
                    inPutField(
                      keyBoardType: TextInputType.text,
                      formfieldheading: 'Class',
                      controller: classController,
                    ),
                    inPutField(
                      keyBoardType: TextInputType.number,
                      formfieldheading: 'Age',
                      controller: ageController,
                    ),
                    editFormButtons(context, controller)
                  ],
                ),
              );
            }),
      ),
    );
  }

  Padding editFormButtons(BuildContext context, ListController controller) {
    return Padding(
      padding: horizontalPadding20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancel', style: whiteColor),
          ),
          ElevatedButton(
            onPressed: () {
              // print(nameController.text);
              updateDetails(id, controller);
              Navigator.of(context).pop();
            },
            child: Text('Save', style: whiteColor),
          ),
        ],
      ),
    );
  }

  GestureDetector profileImage(ListController controller) {
    return GestureDetector(
      onTap: (() => controller.imagePick()),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetX(
            init: FormController(),
            builder: (model) {
              final image = controller.studentList[index].image;
              _image = model.formModel.value.image;
              return CircleAvatar(
                backgroundImage: model.formModel.value.image != null
                    ? Image.memory(model.formModel.value.image!).image
                    : Image.memory(image!).image,
                radius: 60,
              );
            },
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        'Edit Details',
        style: whiteColor,
      ),
      centerTitle: true,
    );
  }

  Padding inPutField({
    required String formfieldheading,
    required TextEditingController controller,
    required TextInputType keyBoardType
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            formfieldheading,
            style: buttonTextStyle,
          ),
          GetX<FormController>(
              init: FormController(),
              builder: (data) {
                return TextFormField(
                  keyboardType: keyBoardType,
                  controller: controller,
                  readOnly: data.editModel.value.isEditable,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          Get.find<FormController>().permission(false);
                        },
                        icon: const Icon(Icons.edit),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2))),
                );
              }),
        ],
      ),
    );
  }

  Future<void> updateDetails(int id, ListController controller) async {
    var name = nameController.text;
    var sclass = classController.text;
    var phnNumber = phnNumberController.text;
    var age = ageController.text;
    _image ??= image;

    if (name.isEmpty || age.isEmpty || phnNumber.isEmpty || sclass.isEmpty) {
      if (name.isEmpty) {
        name = name;
        // print("name$name");
      }
      if (age.isEmpty) {
        age = age;
      }
      if (phnNumber.isEmpty) {
        phnNumber = phnNumber;
      }
      if (sclass.isEmpty) {
        sclass = sclass;
      }
    }

    final student = StudentModel(
        name: name,
        age: age,
        phnnumber: phnNumber,
        standard: sclass,
        id: id,
        image: _image);
    controller.updateStudentDetails(student, id, index);
  }
}
