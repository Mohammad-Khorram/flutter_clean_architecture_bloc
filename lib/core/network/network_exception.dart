import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';

class NetworkException implements Exception {
  final String message;

  NetworkException({required this.message});

  static NetworkException handleResponse(dio.Response response) {
    switch (response.statusCode) {
      case 203:
        throw NonAuthoritativeInformationException();

      case 204:
        throw NoContentException();

      case 304:
        throw NotModifiedException();

      /// to call refresh_token
      case 401:
        throw UnauthorizedException();

      case 402:
        throw PaymentRequiredException();

      case 403:
        throw ForbiddenException();

      case 404:
        throw NotFoundException();

      case 405:
        throw MethodNotAllowedException();

      case 406:
        throw NotAcceptableException();

      case 407:
        throw ProxyAuthRequiredException();

      case 408:
        throw RequestTimeoutException();

      case 409:
        throw ConflictException();

      case 411:
        throw LengthRequiredException();

      case 412:
        throw PreConditionFailedException();

      case 413:
        throw RequestEntityTooLargeException();

      case 414:
        throw RequestUriTooLongException();

      case 415:
        throw UnsupportedMediaTypeException();

      case 416:
        throw RequestedRangeNotSatisfiableException();

      case 417:
        throw ExpectationFailedException();

      case 422:
        throw UnProcessableEntityException();

      case 424:
        throw FailedDependencyException();

      case 425:
        throw UnorderedCollectionException();

      case 426:
        throw UpgradeRequiredException();

      case 429:
        throw TooManyRequestException();

      case 431:
        throw RequestHeaderFieldsTooLargeException();

      case 444:
        throw NoResponseException();

      case 451:
        throw UnavailableForLegalReasonsException();

      case 494:
        throw RequestHeaderTooLargeException();

      case 500:
        throw InternalServerErrorException();

      case 501:
        throw NotImplementedException();

      case 502:
        throw BadGatewayException();

      case 503:
        throw ServiceUnavailableException();

      case 504:
        throw GatewayTimeoutException();

      case 507:
        throw InsufficientStorageException();

      case 508:
        throw LoopDetectedException();

      case 509:
        throw BandwidthLimitException();

      case 510:
        throw NotExtendedException();

      case 511:
        throw NetworkAuthRequiredException();

      default:
        throw UnknownException();
    }
  }

  static ParsingDataException parsingDataException() => ParsingDataException();
}

class ParsingDataException extends NetworkException {
  ParsingDataException() : super(message: 'parsingDataError'.tr);
}

// 203
class NonAuthoritativeInformationException extends NetworkException {
  NonAuthoritativeInformationException() : super(message: 'generalError'.tr);
}

// 204
class NoContentException extends NetworkException {
  NoContentException() : super(message: 'generalError'.tr);
}

// 304
class NotModifiedException extends NetworkException {
  NotModifiedException() : super(message: 'generalError'.tr);
}

// 400
class BadRequestException extends NetworkException {
  BadRequestException() : super(message: 'badRequestError'.tr);
}

// 401
/// to call refresh_token
class UnauthorizedException extends NetworkException {
  UnauthorizedException() : super(message: 'forbiddenError'.tr);
}

// 402
class PaymentRequiredException extends NetworkException {
  PaymentRequiredException() : super(message: 'generalError'.tr);
}

// 403
class ForbiddenException extends NetworkException {
  ForbiddenException() : super(message: 'forbiddenError'.tr);
}

// 404
class NotFoundException extends NetworkException {
  NotFoundException() : super(message: 'notFoundExceptionError'.tr);
}

// 405
class MethodNotAllowedException extends NetworkException {
  MethodNotAllowedException() : super(message: 'generalError'.tr);
}

// 406
class NotAcceptableException extends NetworkException {
  NotAcceptableException() : super(message: 'generalError'.tr);
}

// 407
class ProxyAuthRequiredException extends NetworkException {
  ProxyAuthRequiredException() : super(message: 'generalError'.tr);
}

// 408
class RequestTimeoutException extends NetworkException {
  RequestTimeoutException() : super(message: 'timeoutError'.tr);
}

// 409
class ConflictException extends NetworkException {
  ConflictException() : super(message: 'generalError'.tr);
}

// 411
class LengthRequiredException extends NetworkException {
  LengthRequiredException() : super(message: 'generalError'.tr);
}

// 412
class PreConditionFailedException extends NetworkException {
  PreConditionFailedException() : super(message: 'generalError'.tr);
}

// 413
class RequestEntityTooLargeException extends NetworkException {
  RequestEntityTooLargeException() : super(message: 'generalError'.tr);
}

// 414
class RequestUriTooLongException extends NetworkException {
  RequestUriTooLongException() : super(message: 'generalError'.tr);
}

// 415
class UnsupportedMediaTypeException extends NetworkException {
  UnsupportedMediaTypeException() : super(message: 'generalError'.tr);
}

// 416
class RequestedRangeNotSatisfiableException extends NetworkException {
  RequestedRangeNotSatisfiableException() : super(message: 'generalError'.tr);
}

// 417
class ExpectationFailedException extends NetworkException {
  ExpectationFailedException() : super(message: 'generalError'.tr);
}

// 422
class UnProcessableEntityException extends NetworkException {
  UnProcessableEntityException() : super(message: 'generalError'.tr);
}

// 424
class FailedDependencyException extends NetworkException {
  FailedDependencyException() : super(message: 'generalError'.tr);
}

// 425
class UnorderedCollectionException extends NetworkException {
  UnorderedCollectionException() : super(message: 'generalError'.tr);
}

// 426
class UpgradeRequiredException extends NetworkException {
  UpgradeRequiredException() : super(message: 'generalError'.tr);
}

// 429
class TooManyRequestException extends NetworkException {
  TooManyRequestException() : super(message: 'tooManyRequestError'.tr);
}

// 431
class RequestHeaderFieldsTooLargeException extends NetworkException {
  RequestHeaderFieldsTooLargeException() : super(message: 'generalError'.tr);
}

// 444
class NoResponseException extends NetworkException {
  NoResponseException() : super(message: 'generalError'.tr);
}

// 451
class UnavailableForLegalReasonsException extends NetworkException {
  UnavailableForLegalReasonsException() : super(message: 'generalError'.tr);
}

// 494
class RequestHeaderTooLargeException extends NetworkException {
  RequestHeaderTooLargeException() : super(message: 'generalError'.tr);
}

// 500
class InternalServerErrorException extends NetworkException {
  InternalServerErrorException() : super(message: 'internalServerError'.tr);
}

// 501
class NotImplementedException extends NetworkException {
  NotImplementedException() : super(message: 'generalError'.tr);
}

// 502
class BadGatewayException extends NetworkException {
  BadGatewayException() : super(message: 'generalError'.tr);
}

// 503
class ServiceUnavailableException extends NetworkException {
  ServiceUnavailableException() : super(message: 'serviceUnavailableError'.tr);
}

// 504
class GatewayTimeoutException extends NetworkException {
  GatewayTimeoutException() : super(message: 'generalError'.tr);
}

// 507
class InsufficientStorageException extends NetworkException {
  InsufficientStorageException() : super(message: 'generalError'.tr);
}

// 508
class LoopDetectedException extends NetworkException {
  LoopDetectedException() : super(message: 'generalError'.tr);
}

// 509
class BandwidthLimitException extends NetworkException {
  BandwidthLimitException() : super(message: 'generalError'.tr);
}

// 510
class NotExtendedException extends NetworkException {
  NotExtendedException() : super(message: 'generalError'.tr);
}

// 511
class NetworkAuthRequiredException extends NetworkException {
  NetworkAuthRequiredException() : super(message: 'generalError'.tr);
}

class UnknownException extends NetworkException {
  UnknownException() : super(message: 'generalError'.tr);
}
