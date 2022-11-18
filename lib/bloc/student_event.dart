part of 'student_bloc.dart';

@freezed
class StudentEvent with _$StudentEvent {
  const factory StudentEvent.getStudentDetails({
   required String sname,
   required String phonNumber,
   required String age,
   required String division,
  }) = GetStudentDetails;
}