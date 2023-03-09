part of 'bet_bloc.dart';

enum BetStatus {
  initial,
  loading,
  success,
  failure,
}

enum CreateBetStatus { initial, created, exists }

class BetState extends Equatable {
  const BetState({
    this.status = BetStatus.initial,
    this.betStatus = CreateBetStatus.initial,
    this.bets = const <Bet>[],
  });

  final BetStatus status;
  final List<Bet> bets;
  final CreateBetStatus betStatus;

  BetState copyWith({
    BetStatus? status,
    List<Bet>? bets,
    CreateBetStatus? betStatus,
  }) {
    return BetState(
      status: status ?? this.status,
      bets: bets ?? this.bets,
      betStatus: betStatus ?? this.betStatus,
    );
  }

  @override
  List<Object> get props => [status, bets, betStatus];
}
