import '/component/nav_bar1/nav_bar1_widget.dart';
import '/component/plan_check/plan_check_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'recommended_plan_page_widget.dart' show RecommendedPlanPageWidget;
import 'package:flutter/material.dart';

class RecommendedPlanPageModel
    extends FlutterFlowModel<RecommendedPlanPageWidget> {
  ///  Local state fields for this page.

  bool diatCheck = false;

  bool skincareCheck = false;

  bool bodyCheck = false;

  bool hairCheck = false;

  bool fasionCheck = false;

  bool foodCheck = false;

  List<String> checkedList = [];
  void addToCheckedList(String item) => checkedList.add(item);
  void removeFromCheckedList(String item) => checkedList.remove(item);
  void removeAtIndexFromCheckedList(int index) => checkedList.removeAt(index);
  void insertAtIndexInCheckedList(int index, String item) =>
      checkedList.insert(index, item);
  void updateCheckedListAtIndex(int index, Function(String) updateFn) =>
      checkedList[index] = updateFn(checkedList[index]);

  List<int> selectedContainers = [];
  void addToSelectedContainers(int item) => selectedContainers.add(item);
  void removeFromSelectedContainers(int item) =>
      selectedContainers.remove(item);
  void removeAtIndexFromSelectedContainers(int index) =>
      selectedContainers.removeAt(index);
  void insertAtIndexInSelectedContainers(int index, int item) =>
      selectedContainers.insert(index, item);
  void updateSelectedContainersAtIndex(int index, Function(int) updateFn) =>
      selectedContainers[index] = updateFn(selectedContainers[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for planCheck component.
  late PlanCheckModel planCheckModel1;
  // Model for planCheck component.
  late PlanCheckModel planCheckModel2;
  // Model for planCheck component.
  late PlanCheckModel planCheckModel3;
  // Model for planCheck component.
  late PlanCheckModel planCheckModel4;
  // Model for planCheck component.
  late PlanCheckModel planCheckModel5;
  // Model for planCheck component.
  late PlanCheckModel planCheckModel6;
  // Model for NavBar1 component.
  late NavBar1Model navBar1Model;

  @override
  void initState(BuildContext context) {
    planCheckModel1 = createModel(context, () => PlanCheckModel());
    planCheckModel2 = createModel(context, () => PlanCheckModel());
    planCheckModel3 = createModel(context, () => PlanCheckModel());
    planCheckModel4 = createModel(context, () => PlanCheckModel());
    planCheckModel5 = createModel(context, () => PlanCheckModel());
    planCheckModel6 = createModel(context, () => PlanCheckModel());
    navBar1Model = createModel(context, () => NavBar1Model());
  }

  @override
  void dispose() {
    planCheckModel1.dispose();
    planCheckModel2.dispose();
    planCheckModel3.dispose();
    planCheckModel4.dispose();
    planCheckModel5.dispose();
    planCheckModel6.dispose();
    navBar1Model.dispose();
  }
}
