import 'package:equatable/equatable.dart';

abstract class Filuar extends Equatable {
  final String massage;

  const Filuar(this.massage);

  @override
  List<Object?> get props => [massage];
}

class ServerFiluar extends Filuar {
  const ServerFiluar(super.massage);
}

class DatapaseFiluar extends Filuar {
  const DatapaseFiluar(super.massage);
}
