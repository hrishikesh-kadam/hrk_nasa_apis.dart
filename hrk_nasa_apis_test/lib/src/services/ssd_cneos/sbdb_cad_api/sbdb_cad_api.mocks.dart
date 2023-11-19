// Mocks generated by Mockito 5.4.3 from annotations
// in hrk_nasa_apis_test/src/services/ssd_cneos/sbdb_cad_api/sbdb_cad_api.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dio/dio.dart' as _i2;
import 'package:hrk_nasa_apis/src/services/ssd_cneos/ssd_cneos.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeResponse_0<T> extends _i1.SmartFake implements _i2.Response<T> {
  _FakeResponse_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [SbdbCadApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockSbdbCadApi extends _i1.Mock implements _i3.SbdbCadApi {
  @override
  _i4.Future<_i2.Response<_i3.SbdbCadBody>> get({
    Map<String, dynamic>? queryParameters,
    _i2.Options? options,
    _i2.CancelToken? cancelToken,
    _i2.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [],
          {
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i4.Future<_i2.Response<_i3.SbdbCadBody>>.value(
            _FakeResponse_0<_i3.SbdbCadBody>(
          this,
          Invocation.method(
            #get,
            [],
            {
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Response<_i3.SbdbCadBody>>.value(
                _FakeResponse_0<_i3.SbdbCadBody>(
          this,
          Invocation.method(
            #get,
            [],
            {
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i4.Future<_i2.Response<_i3.SbdbCadBody>>);
}
