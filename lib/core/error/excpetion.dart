import 'package:movis/core/network/error_massage_model.dart';

class ServerExcpetion implements Exception {
  final ErrorMassageModel errorMassageModel;

 const ServerExcpetion({required this.errorMassageModel});
}

class LocaleDatabaseExcpetion implements Exception{
  final ErrorMassageModel errorMassageModel;

  const LocaleDatabaseExcpetion({required this.errorMassageModel});
}
