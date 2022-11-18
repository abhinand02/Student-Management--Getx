import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_event.dart';
part 'student_state.dart';
part 'student_bloc.freezed.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  StudentBloc() : super(StudentState.initial()) {
    on<GetStudentDetails>((event, emit) {
      print(state.sname);
     return emit(StudentState(sname: state.sname,phonNumber: state.phonNumber,age: state.age, division: state.division));
    });
  }
}
