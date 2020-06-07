import 'package:flutter_clean_example/core/domain/entities/message_thread.dart';

class MessagesState {
  final List<MessageThread> messageThreads;
  final bool loading;

  const MessagesState({
    this.messageThreads,
    this.loading = false,
  });

  MessagesState copyWith({
    List<MessageThread> messageThreads,
    bool loading,
  }) {
    return MessagesState(
      messageThreads: messageThreads ?? this.messageThreads,
      loading: loading ?? this.loading,
    );
  }
}
