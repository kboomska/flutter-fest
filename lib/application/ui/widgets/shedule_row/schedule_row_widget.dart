import 'package:flutter/material.dart';

import 'package:flutter_fest/application/ui/widgets/shedule_row/schedule_row_session_widget.dart';

abstract class ScheduleRowWidget extends StatelessWidget {
  const ScheduleRowWidget({super.key});

  factory ScheduleRowWidget.single({Key? key}) =>
      _ScheduleRowSingleSessionWidget(key: key);

  factory ScheduleRowWidget.multi({Key? key}) =>
      _ScheduleRowMultiSessionWidget(key: key);
}

class _ScheduleRowSingleSessionWidget extends ScheduleRowWidget {
  const _ScheduleRowSingleSessionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ScheduleRowSessionWidget(),
      ],
    );
  }
}

class _ScheduleRowMultiSessionWidget extends ScheduleRowWidget {
  const _ScheduleRowMultiSessionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
