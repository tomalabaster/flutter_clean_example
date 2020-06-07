import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_example/core/domain/entities/student.dart';
import 'package:flutter_clean_example/features/messages/bloc/messages_bloc.dart';
import 'package:flutter_clean_example/injector.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<MessagesBloc>(param1: Student()),
      child: Container(
        child: Text('Messages'),
      ),
    );
  }
}
