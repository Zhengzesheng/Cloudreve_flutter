import 'dart:convert';

import 'package:dio/dio.dart';

const String APPLICATION_JSON = "application/json";
const String CONTENT_TYPE = "content-type";
const String ACCEPT = "accept";
const String AUTHORIZATION = "authorization";
const String DEFAULT_LANGUAGE = "en";
const String TOKEN = "Bearer token";
const String BASE_URL = "https://demo.cloudreve.org/api";

class HttpManager {
  static final HttpManager _instance = HttpManager._internal();

  factory HttpManager() => _instance;

  Dio _dio = Dio();

  HttpManager._internal() {
    _dio = Dio(
      BaseOptions(
        baseUrl: BASE_URL,
        connectTimeout: const Duration(seconds: 5), // 5秒
        receiveTimeout: const Duration(seconds: 3), // 3秒
        headers: {
          CONTENT_TYPE: APPLICATION_JSON,
          ACCEPT: APPLICATION_JSON,
          AUTHORIZATION: TOKEN,
          DEFAULT_LANGUAGE: DEFAULT_LANGUAGE,
        },
      ),
    );
    _dio.interceptors.add(HttpInterceptor());
  }

  Future<Response> get(
    String url, {
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    Options requestOptions = options ?? Options();
    Response response = await _dio.get(
      url,
      queryParameters: params,
      options: requestOptions,
      cancelToken: cancelToken,
    );
    printToJson(url, params);
    return response;
  }

  Future<Response> post(
    String url, {
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    Options requestOptions = options ?? Options();
    Response response = await _dio.post(
      url,
      queryParameters: params,
      options: requestOptions,
      cancelToken: cancelToken,
    );
    return response;
  }

  Future<Response> put(
    String url, {
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    Options requestOptions = options ?? Options();
    Response response = await _dio.put(
      url,
      queryParameters: params,
      options: requestOptions,
      cancelToken: cancelToken,
    );
    return response;
  }

  Future<Response> delete(
    String url, {
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    Options requestOptions = options ?? Options();
    Response response = await _dio.delete(
      url,
      queryParameters: params,
      options: requestOptions,
      cancelToken: cancelToken,
    );
    return response;
  }

  Future<Response> download(
    String url,
    String savePath, {
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    Options requestOptions = options ?? Options();
    Response response = await _dio.download(
      url,
      savePath,
      queryParameters: params,
      options: requestOptions,
      cancelToken: cancelToken,
    );
    return response;
  }

  printToJson(String path, Map<String, dynamic>? params) {
    String jsonData = json.encode(params);
    print('''
    **  http response*********
    **  url :  $BASE_URL$path
    **  jsonParams : $jsonData
    **  http response*********
    ''');
  }
}

class HttpInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print("HttpInterceptor onRequest");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print("HttpInterceptor onResponse");
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print("HttpInterceptor onError:$err--$handler");
  }
}
