import '../network/network.dart';
import '../response/response.dart';

class UserRepository{
  final NetworkModel networkModel;

  UserRepository({required this.networkModel});

  Future<MyResponse> getAllUsers()=> NetworkModel.getAllUsers();
}