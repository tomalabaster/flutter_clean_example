import 'package:bloc/bloc.dart';
import 'package:flutter_clean_example/core/domain/entities/student.dart';
import 'package:flutter_clean_example/core/domain/repositories/imessages_repository.dart';
import 'package:flutter_clean_example/features/messages/bloc/messages_event.dart';
import 'package:flutter_clean_example/features/messages/bloc/messages_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  final IMessagesRepository _messagesRepository;
  final Student _student;

  MessagesBloc(
    this._messagesRepository,
    @factoryParam this._student,
  );

  @override
  MessagesState get initialState => MessagesState(loading: true);

  @override
  Stream<MessagesState> mapEventToState(MessagesEvent event) async* {
    if (event is MessagesLoadThreadsEvent) {
      final messageThreads = await this
          ._messagesRepository
          .getMessageThreads(forStudent: this._student);
      yield this.state.copyWith(
            messageThreads: messageThreads,
            loading: false,
          );
    }
  }
}
