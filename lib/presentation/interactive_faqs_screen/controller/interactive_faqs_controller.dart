import '/core/app_export.dart';
import 'package:itr/presentation/interactive_faqs_screen/models/interactive_faqs_model.dart';

class InteractiveFaqsController extends GetxController {
  Rx<InteractiveFaqsModel> interactiveFaqsModelObj = InteractiveFaqsModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    interactiveFaqsModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    interactiveFaqsModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    selectedDropDownValue1 = value as SelectionPopupModel;
    interactiveFaqsModelObj.value.dropdownItemList1.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    interactiveFaqsModelObj.value.dropdownItemList1.refresh();
  }

  onSelected2(dynamic value) {
    selectedDropDownValue2 = value as SelectionPopupModel;
    interactiveFaqsModelObj.value.dropdownItemList2.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    interactiveFaqsModelObj.value.dropdownItemList2.refresh();
  }

  onSelected3(dynamic value) {
    selectedDropDownValue3 = value as SelectionPopupModel;
    interactiveFaqsModelObj.value.dropdownItemList3.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    interactiveFaqsModelObj.value.dropdownItemList3.refresh();
  }
}
