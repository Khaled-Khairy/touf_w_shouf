import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:touf_w_shouf/core/helpers/extensions.dart';
import 'package:touf_w_shouf/core/routing/routes.dart';
import 'package:touf_w_shouf/features/home/data/models/program_model.dart';
import 'package:touf_w_shouf/features/home/views/widgets/outings/program_list_view_item.dart';

class ProgramListView extends StatelessWidget {
  const ProgramListView({
    super.key,
    required this.programs,
  });

  final List<ProgramModel> programs;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 214.h,
      child: ListView.builder(
        itemCount: programs.length,
        scrollDirection: Axis.horizontal,
        cacheExtent: 400,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              right: index == programs.length - 1 ? 0 : 16,
            ),
            child: GestureDetector(
              onTap: () {
                context.pushNamed(
                  Routes.programDetailsView,
                  arguments: programs[index],
                );
              },
              child: ProgramListViewItem(
                program: programs[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
