part of 'student_bloc.dart';

@freezed
class StudentState with _$StudentState {
  const factory StudentState({
   @Default('') String sname,
   @Default('') String phonNumber,
   @Default('') String age,
   @Default('') String division,
  }) = _Initial;

  factory StudentState.initial(){
    return  StudentState();
  }

}
