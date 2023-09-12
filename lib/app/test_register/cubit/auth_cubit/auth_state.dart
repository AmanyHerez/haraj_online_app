abstract class AuthState{}
class InitialAuthState extends AuthState {}

class LoadingAuthState extends AuthState {}

class SucessAuthState extends AuthState {}

class FailureAuthState extends AuthState {}