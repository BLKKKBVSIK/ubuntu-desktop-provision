// Mocks generated by Mockito 5.4.2 from annotations
// in ubuntu_utils/test/command_line_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;
import 'dart:convert' as _i2;
import 'dart:io' as _i3;

import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEncoding_0 extends _i1.SmartFake implements _i2.Encoding {
  _FakeEncoding_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [IOSink].
///
/// See the documentation for Mockito's code generation for more information.
class MockIOSink extends _i1.Mock implements _i3.IOSink {
  MockIOSink() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Encoding get encoding => (super.noSuchMethod(
        Invocation.getter(#encoding),
        returnValue: _FakeEncoding_0(
          this,
          Invocation.getter(#encoding),
        ),
      ) as _i2.Encoding);
  @override
  set encoding(_i2.Encoding? _encoding) => super.noSuchMethod(
        Invocation.setter(
          #encoding,
          _encoding,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i4.Future<dynamic> get done => (super.noSuchMethod(
        Invocation.getter(#done),
        returnValue: _i4.Future<dynamic>.value(),
      ) as _i4.Future<dynamic>);
  @override
  void add(List<int>? data) => super.noSuchMethod(
        Invocation.method(
          #add,
          [data],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void write(Object? object) => super.noSuchMethod(
        Invocation.method(
          #write,
          [object],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void writeAll(
    Iterable<dynamic>? objects, [
    String? separator = r'',
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #writeAll,
          [
            objects,
            separator,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void writeln([Object? object = r'']) => super.noSuchMethod(
        Invocation.method(
          #writeln,
          [object],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void writeCharCode(int? charCode) => super.noSuchMethod(
        Invocation.method(
          #writeCharCode,
          [charCode],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void addError(
    Object? error, [
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #addError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i4.Future<dynamic> addStream(_i4.Stream<List<int>>? stream) =>
      (super.noSuchMethod(
        Invocation.method(
          #addStream,
          [stream],
        ),
        returnValue: _i4.Future<dynamic>.value(),
      ) as _i4.Future<dynamic>);
  @override
  _i4.Future<dynamic> flush() => (super.noSuchMethod(
        Invocation.method(
          #flush,
          [],
        ),
        returnValue: _i4.Future<dynamic>.value(),
      ) as _i4.Future<dynamic>);
  @override
  _i4.Future<dynamic> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i4.Future<dynamic>.value(),
      ) as _i4.Future<dynamic>);
}