import 'package:flutter/cupertino.dart';
import '../models/ReviewModel.dart';

class DisplayReview extends ChangeNotifier{
  List<ReviewModel> taskList = []; //contains all the task

  addTaskInList(){
    ReviewModel taskModel = ReviewModel("Farhan Khan. Review No: ${taskList.length}", "This guy is amazing ${taskList.length}");
    taskList.add(taskModel);

    notifyListeners();
    //code to do
  }

}