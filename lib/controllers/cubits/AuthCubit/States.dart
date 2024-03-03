abstract class AuthStates {}

class AuthInitState extends AuthStates {}

class GettingTokenSuccessfully extends AuthStates {}

class GettingTokenFailed extends AuthStates {}

class LoginSuccessfulState extends AuthStates {}

class LoginFailedState extends AuthStates {}

class RegisterSuccessfulState extends AuthStates {}

class GettingUserDataSuccessfully extends AuthStates {}

class GettingNotificationSuccess extends AuthStates {}

class GettingNotificationFailed extends AuthStates {}

class GettingSugesstedJobSuccessfully extends AuthStates {}

class GettingSugesstedJobFail extends AuthStates {}

class GettingAllJobsSuccessfully extends AuthStates {}

class GettingAllJobsFailed extends AuthStates {}

class UserPostMessageSuccess extends AuthStates {}

class UserPostMessageFail extends AuthStates {}

class getChatSuccess extends AuthStates {}

class getChatFail extends AuthStates {}
