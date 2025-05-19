import 'package:evently/core/extensions/date_extension.dart';
import 'package:evently/core/widgets/custom_elevated_button.dart';
import 'package:evently/core/widgets/custom_tab_bar.dart';
import 'package:evently/core/widgets/custom_text_button.dart';
import 'package:evently/core/widgets/custom_text_form_field.dart';
import 'package:evently/data/DM/category_DM.dart';
import 'package:evently/data/DM/eventDM.dart';
import 'package:evently/data/firebase_services/firebase_service.dart';
import 'package:evently/l10n/app_localizations.dart';
import 'package:evently/utils/app_colors.dart';
import 'package:evently/utils/app_images.dart';
import 'package:evently/utils/constant_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateEventScreen extends StatefulWidget {
  const CreateEventScreen({super.key});

  @override
  State<CreateEventScreen> createState() => _CreateEventScreenState();
}

class _CreateEventScreenState extends State<CreateEventScreen> {
  late TextEditingController titleController;
  late TextEditingController descriptionController;
  late TextEditingController dateController;
  late TextEditingController timeController;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController();
    descriptionController = TextEditingController();
    dateController = TextEditingController();
    timeController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    titleController.dispose();
    descriptionController.dispose();
  }

  CategoryDM selectedCategory = ConstantManager.categoriesWithoutAll[0];
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.create_event)),
      body: Padding(
        padding: REdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                clipBehavior: Clip.hardEdge,
                borderRadius: BorderRadius.circular(16.r),
                child: Image.asset(AppImages.firstImage),
              ),
              CustomTabBar(
                onCategoryTabClicked: _onCategoryItemClick,
                categories: ConstantManager.categoriesWithoutAll,
                selectedTabBg: AppColors.blue,
                unselectedTabBg: Colors.transparent,
                selectedLabelColor: AppColors.light,
                unselectedLabelColor: AppColors.blue,
                verticalPadding: 16,
              ),
              Text(
                AppLocalizations.of(context)!.title,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: 8.h),
              CustomTextFormField(
                controller: titleController,
                keyboardType: TextInputType.text,
                labelText: AppLocalizations.of(context)!.event_title,
                prefixIcon: Icons.edit_note_outlined,
              ),
              SizedBox(height: 16.h),
              Text(
                AppLocalizations.of(context)!.description,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: 8.h),
              CustomTextFormField(
                controller: descriptionController,
                keyboardType: TextInputType.text,
                maxLines: 3,
                labelText: AppLocalizations.of(context)!.event_description,
              ),
              Row(
                children: [
                  const Icon(Icons.date_range),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Text(
                      // "${selectedDate.day}-${selectedDate.month}-${selectedDate.year}",
                      selectedDate.toFormatedDay,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  CustomTextButton(
                    title: AppLocalizations.of(context)!.choose_date,
                    onPress: _showEventDate,
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.access_time_rounded),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Text(
                      "${selectedTime.hour}-${selectedTime.minute}",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  CustomTextButton(
                    title: AppLocalizations.of(context)!.choose_time,
                    onPress: _showEventTime,
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              CustomElevatedButton(
                title: AppLocalizations.of(context)!.add_event,
                onPress: _createEvent,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onCategoryItemClick(CategoryDM category) {
    setState(() {
      selectedCategory = category;
    });
  }

  void _createEvent() async {
    EventDM event = EventDM(
      category: selectedCategory,
      title: titleController.text,
      description: descriptionController.text,
      date: selectedDate,
      time: TimeOfDay.now(),
    );
    await FirebaseServices.addEventToFireStore(event);
  }

  void _showEventDate() async {
    selectedDate =
        await showDatePicker(
          context: context,
          firstDate: DateTime.now(),
          initialDate: DateTime.now(),
          lastDate: DateTime.now().add(const Duration(days: 356)),
        ) ??
        selectedDate;
    setState(() {});
  }

  void _showEventTime() async {
    selectedTime =
        await showTimePicker(context: context, initialTime: TimeOfDay.now()) ??
        selectedTime;
    setState(() {});
  }
}
