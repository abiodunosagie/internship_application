import 'package:bloc/bloc.dart';

class HomeScreenBottomBarCubit extends Cubit<int> {
  HomeScreenBottomBarCubit() : super(0);

  void changeIndex(int index) {
    emit(index);
  }
}
