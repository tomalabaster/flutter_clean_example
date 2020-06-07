import 'package:flutter/foundation.dart';
import 'package:flutter_clean_example/core/domain/entities/student.dart';
import 'package:flutter_clean_example/core/domain/entities/message_thread.dart';
import 'package:flutter_clean_example/core/domain/repositories/imessages_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
@RegisterAs(IMessagesRepository)
class FirebaseMessagesRepository implements IMessagesRepository {
  @override
  Future<List<MessageThread>> getMessageThreads(
      {@required Student forStudent}) async {
    return [];
  }
}
