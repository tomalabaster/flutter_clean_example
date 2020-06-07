import 'package:flutter/foundation.dart';
import 'package:flutter_clean_example/core/domain/entities/message_thread.dart';
import 'package:flutter_clean_example/core/domain/entities/student.dart';

abstract class IMessagesRepository {
  Future<List<MessageThread>> getMessageThreads({@required Student forStudent});
}
