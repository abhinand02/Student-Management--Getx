import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:students_record/GetX/event_functions.dart';
import 'package:students_record/add_student.dart';
import 'package:students_record/constants/styles.dart';
import 'package:students_record/db/db.dart';
import 'student_details.dart';


class StudentsRecord extends StatelessWidget {
   StudentsRecord({super.key});

  ListController listController = Get.put(ListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SafeArea(
        child: Column(
          children: [
            studentsList(context),
          ],
        ),
      ),
      floatingActionButton: studentDataAddButton(context),
    );
  }

  AppBar appBar(context) {
    return AppBar(
      title: Text(
        'Students Record',
        style: whiteColor,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {
            showSearch(
              context: context,
              delegate: MySearchDelegete(),
            );
          },
          icon: const Icon(Icons.search),
        )
      ],
    );
  }

  FloatingActionButton studentDataAddButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) =>  AddStudentPage()));
      },
      child: const Icon(
        Icons.person_add_alt_rounded,
        color: Colors.white,
      ),
    );
  }

  Expanded studentsList(BuildContext context) {
    return Expanded(
      child: GetBuilder<ListController>(
        init: ListController(),
        builder: (controller) {
        return ListView.separated(
                itemBuilder: (ctx, index) {
                  final items = controller.studentList.toList();
                  final data = items[index];
                  return ListTile(
                    onTap: () {
                      if (items.isEmpty) {
                        return;
                      }
                      print(data.image);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => StudentDetails(
                            phnNumber: data.phnnumber,
                            name: data.name,
                            sclass: data.standard,
                            age: data.age,
                            id: data.id!,
                            index: index,
                            image: data.image!,
                          ),
                        ),
                      );
                    },
                    leading: CircleAvatar(
                      backgroundImage:
                          data.image != null ? MemoryImage(data.image!) : null,
                      radius: 30,
                    ),
                    title: Text(
                      data.name,
                      style: buttonTextStyle,
                    ),
                    subtitle: Text("class: ${data.standard}"),
                    trailing: IconButton(
                      onPressed: () {
                        if (data.id != null) {
                          deletestudent(context, data.id!, listController, index);
                        } else {
                          print('unable to delete id is null');
                        }
                      },
                      icon: const Icon(Icons.delete),
                    ),
                  );
                },
                separatorBuilder: (ctx, index) {
                  return const Divider();
                },
                itemCount: controller.studentList.length);
          }));
      }
  }

  deletestudent(BuildContext ctx, int id, ListController controller, int index) async {
    return showDialog(
      context: ctx,
      builder: (ctx1) {
        return AlertDialog(
          content: Text(
            'Are you sure to delete?',
            style: popupHeading,
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                  child: Text(
                    'Cancel',
                    style: buttonTextStyle,
                  ),
                ),
                TextButton(
                  onPressed: () {
                  controller.deleteStudent(id, index);
                    Navigator.of(ctx).pop();
                  },
                  child: Text(
                    'Yes',
                    style: buttonTextStyle,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
// }

class MySearchDelegete extends SearchDelegate {
  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => close(context, null),
      );

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
          icon: const Icon(Icons.clear),
        )
      ];

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(query),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    Box<StudentModel> studentBox = Hive.box<StudentModel>('student_db');

    List<StudentModel> student = studentBox.values.toList();

    final searchItem = query.isEmpty
        ? student
        : student
            .where(
              (element) => element.name.toLowerCase().contains(
                    query.toLowerCase().toString(),
                  ),
            )
            .toList();
    return searchSuggetions(context, searchItem);
  }

  Widget searchSuggetions(BuildContext context, List<StudentModel> searchItem) {
    return ListView.builder(
        itemCount: searchItem.length,
        itemBuilder: (context, index) {
          final data = searchItem[index];
          return ListTile(
            onTap: () {
              if (data.image == null) {
                return;
              }
              // print(data.image);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => StudentDetails(
                    id: data.id!,
                    index: index,
                    image: data.image!, age: data.age,name: data.name,sclass: data.standard,phnNumber: data.phnnumber,
                  ),
                ),
              );
            },
            leading: CircleAvatar(
              backgroundImage:
                  data.image != null ? MemoryImage(data.image!) : null,
              radius: 30,
            ),
            title: Text(
              data.name,
              style: buttonTextStyle,
            ),
            subtitle: Text("class: ${data.standard}"),
          );
        });
  }
}
