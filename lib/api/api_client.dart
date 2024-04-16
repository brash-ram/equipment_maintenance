import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../data/data.dart';
import '../logging.dart';
import 'api_exception.dart';


class ApiClient {
  ApiClient({
    required this.baseUri,
    required this.client,
  });

  static const kIncludeRequestsInErrors = true;

  final Uri baseUri;
  final http.Client client;

  Future<ResponseOk<T>> _request<T, B>(
    String path, {
      String method = 'GET',
      Map<String, String> queryParameters = const {},
      Map<String, String> headers = const {},
      B? body,
      Uint8List? bodyBytes,
    }
  ) async {
    final requestMethod = method.toUpperCase();
    assert(body == null || bodyBytes == null, 'Cannot supply both text body and bytes body');
    assert(
      switch(requestMethod) {
        'GET' || 'HEAD' when body != null || bodyBytes != null => false,
        _ => true,
      },
      'Cannot supply body with GET or HEAD methods',
    );
    final request = http.Request(
      requestMethod,
      baseUri.replace(
        path: baseUri.path + path,
        queryParameters: queryParameters,
      ),
    );
    request.headers.addAll(headers);
    if (body != null) {
      request.body = MapperContainer.globals.toJson(body);
    }
    if (bodyBytes != null) {
      request.bodyBytes = bodyBytes;
    }
  
    final errorDetailsRequest = !kIncludeRequestsInErrors ? null : request;
    final http.Response response;
    try {
      response = await http.Response.fromStream(await client.send(request));
    } on http.ClientException catch(exception) {
      throw ApiException(
        'Connection error',
        innerException: exception,
        httpRequest: errorDetailsRequest,
      );
    }
    try {
      return MapperContainer.globals.fromJson<ResponseOk<T>>(response.body);
      // switch (data) {
      //   case ResponseOk():
      //     return data;
      //   case ResponseError(:final message, :final code):
      //     throw ApiException.withResponse(
      //       'Error $code: $message',
      //       data,
      //       httpRequest: errorDetailsRequest,
      //       httpResponse: response,
      //     );
      //   case ResponseInvalid():
      //     throw ApiException.withResponse(
      //       'Invalid server response',
      //       data,
      //       httpRequest: errorDetailsRequest,
      //       httpResponse: response,
      //     );
      // }
    } on FormatException catch(exception) {
      throw ApiException(
        'Invalid server response',
        innerException: exception,
        httpRequest: errorDetailsRequest,
        httpResponse: response,
      );
    } on MapperException catch(exception, stackTrace) {
      talker.verbose('Failed to decode server response.', exception, stackTrace);
      // throw ApiException(
      //   'Failed to decode server response.',
      //   innerException: exception,
      //   httpRequest: errorDetailsRequest,
      //   httpResponse: response,
      // );
    }
    late ResponseError responseError;
    try {
      responseError = MapperContainer.globals.fromJson<ResponseError>(response.body);
    } on FormatException catch(exception) {
      throw ApiException(
        'Invalid server response',
        innerException: exception,
        httpRequest: errorDetailsRequest,
        httpResponse: response,
      );
    } on MapperException catch(exception, stackTrace) {
      talker.verbose('Failed to decode server response.', exception, stackTrace);
      throw ApiException(
        'Failed to decode server response.',
        innerException: exception,
        httpRequest: errorDetailsRequest,
        httpResponse: response,
      );
    }

    throw ApiException.withResponse(
      'Invalid server response',
      responseError,
      httpRequest: errorDetailsRequest,
      httpResponse: response,
    );
  }

  Future<T> _get<T>(String path, {
    Map<String, String> queryParameters = const {},
    Map<String, String> headers = const {},
  }) =>
    _request<T, Never>(
      path,
      queryParameters: queryParameters,
      headers: headers,
    )
    .then((value) => value.returnValue);

  Future<T> _post<T, B>(String path, {
    B? body,
    Map<String, String> queryParameters = const {},
    Map<String, String> headers = const {},
  }) =>
    _request<T, B>(
      path,
      method: 'POST',
      headers: {
        'content-type': 'application/json',
        ...headers,
      },
      queryParameters: queryParameters,
      body: body,
    )
    .then((value) => value.returnValue);
  
  Future<List<SimpleEquipment>> getListEquipments() =>
      _post("/caede3a6-d7e5-4a50-b283-4b20b07eb3fb/run");
}
