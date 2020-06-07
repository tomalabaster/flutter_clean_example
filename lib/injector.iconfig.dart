// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_clean_example/features/dashboard/bloc/dashboard_bloc.dart';
import 'package:flutter_clean_example/infrastructure/domain/respositories/messages_repository/firebase_messages_repository.dart';
import 'package:flutter_clean_example/core/domain/repositories/imessages_repository.dart';
import 'package:flutter_clean_example/features/messages/bloc/messages_bloc.dart';
import 'package:flutter_clean_example/core/domain/entities/student.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<DashboardBloc>(() => DashboardBloc());
  g.registerFactory<IMessagesRepository>(() => FirebaseMessagesRepository());
  g.registerFactoryParam<MessagesBloc, Student, dynamic>(
      (_student, _) => MessagesBloc(g<IMessagesRepository>(), _student));
}
