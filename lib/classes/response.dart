/// A managed object to handle ferrying data and error messages from the
/// ``ApiProvider`` and ``TeamBloc``.
class ApiResponse {
  String? errorMessage;
  DateTime? errorTime;
  dynamic payload;

  ApiResponse({
    this.payload,
    this.errorMessage,
  }) : errorTime = DateTime.now();
}

class BlocResponse implements ApiResponse {
  @override
  String? errorMessage;

  @override
  DateTime? errorTime;

  @override
  dynamic payload;

  BlocResponse({
    this.payload,
    this.errorMessage,
  }) : errorTime = DateTime.now();

  BlocResponse.fromApiResponse(ApiResponse response)
      : payload = response.payload,
        errorMessage = response.errorMessage,
        errorTime = response.errorTime;
}
