import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class MainADIDLoginCall {
  static Future<ApiCallResponse> call({
    String? empAdId = '',
    String? password = '',
    String? iMEICode = 'a72a7f4c-26d6-43bb-8830-75fb56a6a458',
    String? isOwner = 'NA',
  }) {
    final body = '''
{
  "EmpActiveDirectoryId": "${empAdId}",
  "Password": "${password}",
  "IMEICode": "${iMEICode}",
  "IsOwner": "${isOwner}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Main ADID Login',
      apiUrl:
          'https://us-central1-ff-enterprise-demos.cloudfunctions.net/mockAPI/AmigoLoginService_v1/LoginService.svc/Login',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'emp_ad_id': empAdId,
        'password': password,
        'IMEI_code': iMEICode,
        'is_owner': isOwner,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic responseMessage(dynamic response) => getJsonField(
        response,
        r'''$.ResponseMessage''',
      );
  static dynamic returnStatus(dynamic response) => getJsonField(
        response,
        r'''$.ReturnStatus''',
      );
  static dynamic isIMEIExists(dynamic response) => getJsonField(
        response,
        r'''$.isIMEIExists''',
      );
}

class FPNLoginCall {
  static Future<ApiCallResponse> call({
    String? empAdId = '',
    String? iMEICode = '',
    String? approverId = '',
    String? requestId = '',
    String? formId = '',
    String? password = '',
  }) {
    final body = '''
{
  "EmpActiveDirectoryId": "${empAdId}",
  "IMEICode": "${iMEICode}",
  "ApproverID": "${approverId}",
  "RequestID": "${requestId}",
  "FormID": "${formId}",
  "Password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FPN Login',
      apiUrl:
          'https://us-central1-ff-enterprise-demos.cloudfunctions.net/mockAPI/FPN_Mobile_Service/MobileService.svc/Login',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'emp_ad_id': empAdId,
        'IMEI_code': iMEICode,
        'approver_id': approverId,
        'request_id': requestId,
        'form_id': formId,
        'password': password,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic responseMessage(dynamic response) => getJsonField(
        response,
        r'''$.ResponseMessage''',
      );
  static dynamic returnStatus(dynamic response) => getJsonField(
        response,
        r'''$.ReturnStatus''',
      );
  static dynamic isIMEIExists(dynamic response) => getJsonField(
        response,
        r'''$.isIMEIExists''',
      );
  static dynamic fpnAuthToken(dynamic response) => getJsonField(
        response,
        r'''$.FPNAuthToken''',
      );
  static dynamic empCode(dynamic response) => getJsonField(
        response,
        r'''$.FPNLoginData.EmpCode''',
      );
  static dynamic empName(dynamic response) => getJsonField(
        response,
        r'''$.FPNLoginData.EmpName''',
      );
  static dynamic profile(dynamic response) => getJsonField(
        response,
        r'''$.FPNLoginData.Profile''',
      );
}

class FPNDashboardCountCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
  }) {
    final body = '''
{
  "UserId": "${userId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FPN Dashboard Count',
      apiUrl:
          'https://us-central1-ff-enterprise-demos.cloudfunctions.net/mockAPI/FPN_Mobile_Service/MobileService.svc/Dashboard',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'user_id': userId,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic responseMessage(dynamic response) => getJsonField(
        response,
        r'''$.ResponseMessage''',
      );
  static dynamic returnStatus(dynamic response) => getJsonField(
        response,
        r'''$.ReturnStatus''',
      );
  static dynamic role(dynamic response) => getJsonField(
        response,
        r'''$.Role''',
      );
  static dynamic awaitingFeedbackRequestCount(dynamic response) => getJsonField(
        response,
        r'''$.DashboardData.AwaitingFeedbackRequestCount''',
      );
  static dynamic fpnAuthorizedCount(dynamic response) => getJsonField(
        response,
        r'''$.DashboardData.FPNAuthorizedCount''',
      );
  static dynamic fpnFeedbackCount(dynamic response) => getJsonField(
        response,
        r'''$.DashboardData.FPNFeedbackCount''',
      );
  static dynamic fpnPendingCount(dynamic response) => getJsonField(
        response,
        r'''$.DashboardData.FPNPendingCount''',
      );
  static dynamic fpnRejectedCount(dynamic response) => getJsonField(
        response,
        r'''$.DashboardData.FPNRejectedCount''',
      );
}

class FPNRequestListCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? requestType = '',
  }) {
    final body = '''
{
  "UserId": "${userId}",
  "RequestType": "${requestType}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FPN Request List',
      apiUrl:
          'https://us-central1-ff-enterprise-demos.cloudfunctions.net/mockAPI/FPN_Mobile_Service/MobileService.svc/RequestList',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'user_id': userId,
        'request_type': requestType,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic responseMessage(dynamic response) => getJsonField(
        response,
        r'''$.ResponseMessage''',
      );
  static dynamic returnStatus(dynamic response) => getJsonField(
        response,
        r'''$.ReturnStatus''',
      );
}

class FPNRequestDetailsCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? fpnNo = '',
  }) {
    final body = '''
{
  "UserId": "${userId}",
  "FpnNo": "${fpnNo}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FPN Request Details',
      apiUrl:
          'https://us-central1-ff-enterprise-demos.cloudfunctions.net/mockAPI/FPN_Mobile_Service/MobileService.svc/RequestDetail',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'user_id': userId,
        'fpn_no': fpnNo,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic responseMessagea(dynamic response) => getJsonField(
        response,
        r'''$.ResponseMessage''',
      );
  static dynamic returnStatus(dynamic response) => getJsonField(
        response,
        r'''$.ReturnStatus''',
      );
  static dynamic fpnNo(dynamic response) => getJsonField(
        response,
        r'''$.FpnNo''',
      );
  static dynamic detailList(dynamic response) => getJsonField(
        response,
        r'''$.RequestDetails.ApplicationDetails.DetailList''',
      );
  static dynamic auditTrail(dynamic response) => getJsonField(
        response,
        r'''$.RequestDetails.AuditTrail''',
      );
  static dynamic benefitDetails(dynamic response) => getJsonField(
        response,
        r'''$.RequestDetails.BenefitDetails''',
      );
  static dynamic budgetDetailsData(dynamic response) => getJsonField(
        response,
        r'''$.RequestDetails.BudgetDetailsData''',
      );
  static dynamic caseApprovalMatrix(dynamic response) => getJsonField(
        response,
        r'''$.RequestDetails.CaseApprovalMatrix''',
      );
  static dynamic caseDetails(dynamic response) => getJsonField(
        response,
        r'''$.RequestDetails.CaseDetails''',
      );
  static dynamic costCenterDetails(dynamic response) => getJsonField(
        response,
        r'''$.RequestDetails.CostCenterDetails''',
      );
  static dynamic feedback(dynamic response) => getJsonField(
        response,
        r'''$.RequestDetails.Feedback''',
      );
  static dynamic processAttachmentDetails(dynamic response) => getJsonField(
        response,
        r'''$.RequestDetails.ProcessAttachmentDetails''',
      );
  static dynamic projectDetails(dynamic response) => getJsonField(
        response,
        r'''$.RequestDetails.ProjectDetails''',
      );
  static dynamic applicationDetailsList(dynamic response) => getJsonField(
        response,
        r'''$.RequestDetails.ApplicationDetails.DetailList''',
      );
}

class FPNTCODetailsCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? fpnNo = '',
  }) {
    final body = '''
{
  "UserId": "${userId}",
  "FpnNo": "${fpnNo}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FPN TCO Details',
      apiUrl:
          'https://us-central1-ff-enterprise-demos.cloudfunctions.net/mockAPI/FPN_Mobile_Service/MobileService.svc/TCODetail',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'user_id': userId,
        'fpn_no': fpnNo,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic responseMessagea(dynamic response) => getJsonField(
        response,
        r'''$.ResponseMessage''',
      );
  static dynamic returnStatus(dynamic response) => getJsonField(
        response,
        r'''$.ReturnStatus''',
      );
  static dynamic fpnAmt(dynamic response) => getJsonField(
        response,
        r'''$.FpnAmt''',
      );
  static dynamic fpnAmtWord(dynamic response) => getJsonField(
        response,
        r'''$.FpnAmtWord''',
      );
  static dynamic fpnNo(dynamic response) => getJsonField(
        response,
        r'''$.FpnNo''',
      );
  static dynamic tcoNo(dynamic response) => getJsonField(
        response,
        r'''$.TcoNo''',
      );
  static dynamic yearsCount(dynamic response) => getJsonField(
        response,
        r'''$.YearsCount''',
      );
  static dynamic vData(dynamic response) => getJsonField(
        response,
        r'''$.vData''',
      );
}

class FPNFeedbackReplyCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? fpnNo = '',
    String? receiverEmpCode = '',
    String? replyText = '',
  }) {
    final body = '''
{
  "UserId": "${userId}",
  "FpnNo": "${fpnNo}",
  "ReceiverEmpCode": "${receiverEmpCode}",
  "ReplyText": "${replyText}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FPN Feedback Reply',
      apiUrl:
          'https://us-central1-ff-enterprise-demos.cloudfunctions.net/mockAPI/FPN_Mobile_Service/MobileService.svc/FpnFeedbackReply',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'user_id': userId,
        'fpn_no': fpnNo,
        'receiver_emp_code': receiverEmpCode,
        'reply_text': replyText,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic responseMessagea(dynamic response) => getJsonField(
        response,
        r'''$.ResponseMessage''',
      );
  static dynamic returnStatus(dynamic response) => getJsonField(
        response,
        r'''$.ReturnStatus''',
      );
  static dynamic fpnReplyData(dynamic response) => getJsonField(
        response,
        r'''$.FPNReplyData''',
      );
}

class FPNValidateCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? empCode = '',
  }) {
    final body = '''
{
  "UserId": "${userId}",
  "EmpCode": "${empCode}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FPN Validate',
      apiUrl:
          'https://us-central1-ff-enterprise-demos.cloudfunctions.net/mockAPI/FPN_Mobile_Service/MobileService.svc/EmployeeDetailRequest',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'user_id': userId,
        'emp_code': empCode,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic responseMessagea(dynamic response) => getJsonField(
        response,
        r'''$.ResponseMessage''',
      );
  static dynamic returnStatus(dynamic response) => getJsonField(
        response,
        r'''$.ReturnStatus''',
      );
  static dynamic employeeNameDetails(dynamic response) => getJsonField(
        response,
        r'''$.EmployeeNameDetails''',
      );
}

class FPNFeedbackCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? fpnNo = '',
    String? receiverEmpCode = '',
    String? feedbackText = '',
    String? fpnAuthToken = '',
  }) {
    final body = '''
{
  "UserId": "${userId}",
  "FpnNo": "${fpnNo}",
  "ReceiverEmpCode": "${receiverEmpCode}",
  "FeedbackText": "${feedbackText}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FPN Feedback',
      apiUrl:
          'https://us-central1-ff-enterprise-demos.cloudfunctions.net/mockAPI/FPN_Mobile_Service/MobileService.svc/FpnFeedbackRequest',
      callType: ApiCallType.POST,
      headers: {
        'FPNAuthToken': '${fpnAuthToken}',
      },
      params: {
        'user_id': userId,
        'fpn_no': fpnNo,
        'receiver_emp_code': receiverEmpCode,
        'feedback_text': feedbackText,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic responseMessagea(dynamic response) => getJsonField(
        response,
        r'''$.ResponseMessage''',
      );
  static dynamic returnStatus(dynamic response) => getJsonField(
        response,
        r'''$.ReturnStatus''',
      );
}

class FPNApproveRequestCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? fpnNo = '',
    String? remark = '',
    String? finConAnalystRemark = '',
  }) {
    final body = '''
{
  "UserId": "${userId}",
  "FpnNo": "${fpnNo}",
  "Remark": "${remark}",
  "FinConAnalystRemark": "${finConAnalystRemark}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FPN Approve Request',
      apiUrl:
          'https://us-central1-ff-enterprise-demos.cloudfunctions.net/mockAPI/FPN_Mobile_Service/MobileService.svc/FPNApproveRequest',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'user_id': userId,
        'fpn_no': fpnNo,
        'remark': remark,
        'finConAnalystRemark': finConAnalystRemark,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic responseMessagea(dynamic response) => getJsonField(
        response,
        r'''$.ResponseMessage''',
      );
  static dynamic returnStatus(dynamic response) => getJsonField(
        response,
        r'''$.ReturnStatus''',
      );
}

class FPNRejectRequestCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? fpnNo = '',
    String? remark = '',
    String? finConAnalystRemark = '',
  }) {
    final body = '''
{
  "UserId": "${userId}",
  "FpnNo": "${fpnNo}",
  "Remark": "${remark}",
  "FinConAnalystRemark": "${finConAnalystRemark}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FPN Reject Request',
      apiUrl:
          'https://us-central1-ff-enterprise-demos.cloudfunctions.net/mockAPI/FPN_Mobile_Service/MobileService.svc/FPNRejectRequest',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'user_id': userId,
        'fpn_no': fpnNo,
        'remark': remark,
        'finConAnalystRemark': finConAnalystRemark,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic responseMessagea(dynamic response) => getJsonField(
        response,
        r'''$.ResponseMessage''',
      );
  static dynamic returnStatus(dynamic response) => getJsonField(
        response,
        r'''$.ReturnStatus''',
      );
}

class FPNLogoutCall {
  static Future<ApiCallResponse> call({
    String? empAdId = '',
  }) {
    final body = '''
{
  "EmpActiveDirectoryId": "${empAdId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FPN Logout',
      apiUrl:
          'https://us-central1-ff-enterprise-demos.cloudfunctions.net/mockAPI/FPN_Mobile_Service/MobileService.svc/Logout',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'emp_ad_id': empAdId,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic responseMessagea(dynamic response) => getJsonField(
        response,
        r'''$.ResponseMessage''',
      );
  static dynamic returnStatus(dynamic response) => getJsonField(
        response,
        r'''$.ReturnStatus''',
      );
}
