//Generated code

part of 'FMA.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$FMA extends FMA {
  _$FMA([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = FMA;

  @override
  Future<Response<dynamic>> _apiAccountLoginPost({required LoginDTO? body}) {
    final $url = '/api/Account/login';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiAccountRefreshtokenPost(
      {required AuthResponseDTO? body}) {
    final $url = '/api/Account/refreshtoken';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<bool>> _apiAccountLogoutPost() {
    final $url = '/api/Account/logout';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<dynamic>>
      _apiAccountChangepasswordUserEmailCurrentPasswordNewPasswordConfirmPasswordPost(
          {required String? userEmail,
          required String? currentPassword,
          required String? newPassword,
          required String? confirmPassword}) {
    final $url =
        '/api/Account/changepassword/${userEmail},${currentPassword},${newPassword},${confirmPassword}';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiAccountForgotpasswordPost({String? email}) {
    final $url = '/api/Account/forgotpassword';
    final $params = <String, dynamic>{'email': email};
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<bool>> _apiAccountResetpasswordPost(
      {required ResetPasswordModel? body}) {
    final $url = '/api/Account/resetpassword';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<BrandDTO>>> _apiBrandGet() {
    final $url = '/api/Brand';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<BrandDTO>, BrandDTO>($request);
  }

  @override
  Future<Response<String>> _apiBrandPost({required BrandDTO? body}) {
    final $url = '/api/Brand';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<BrandDTOPagedResult>> _apiBrandSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/Brand/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BrandDTOPagedResult, BrandDTOPagedResult>($request);
  }

  @override
  Future<Response<BrandDTO>> _apiBrandIdGet({required String? id}) {
    final $url = '/api/Brand/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BrandDTO, BrandDTO>($request);
  }

  @override
  Future<Response<bool>> _apiBrandIdPut(
      {required String? id, required BrandDTO? body}) {
    final $url = '/api/Brand/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiBrandIdDelete({required String? id}) {
    final $url = '/api/Brand/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<CategoryDTO>>> _apiCategoryGet() {
    final $url = '/api/Category';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<CategoryDTO>, CategoryDTO>($request);
  }

  @override
  Future<Response<String>> _apiCategoryPost({required CategoryDTO? body}) {
    final $url = '/api/Category';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<CategoryDTOPagedResult>> _apiCategorySearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/Category/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<CategoryDTOPagedResult, CategoryDTOPagedResult>($request);
  }

  @override
  Future<Response<CategoryDTO>> _apiCategoryIdGet({required String? id}) {
    final $url = '/api/Category/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<CategoryDTO, CategoryDTO>($request);
  }

  @override
  Future<Response<bool>> _apiCategoryIdPut(
      {required String? id, required CategoryDTO? body}) {
    final $url = '/api/Category/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiCategoryIdDelete({required String? id}) {
    final $url = '/api/Category/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<CompanyDTO>>> _apiCompanyGet() {
    final $url = '/api/Company';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<CompanyDTO>, CompanyDTO>($request);
  }

  @override
  Future<Response<String>> _apiCompanyPost({required CompanyDTO? body}) {
    final $url = '/api/Company';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<CompanyDTOPagedResult>> _apiCompanySearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/Company/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<CompanyDTOPagedResult, CompanyDTOPagedResult>($request);
  }

  @override
  Future<Response<CompanyDTO>> _apiCompanyIdGet({required String? id}) {
    final $url = '/api/Company/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<CompanyDTO, CompanyDTO>($request);
  }

  @override
  Future<Response<bool>> _apiCompanyIdPut(
      {required String? id, required CompanyDTO? body}) {
    final $url = '/api/Company/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiCompanyIdDelete({required String? id}) {
    final $url = '/api/Company/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<CostCenterDTO>>> _apiCostCenterGet() {
    final $url = '/api/CostCenter';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<CostCenterDTO>, CostCenterDTO>($request);
  }

  @override
  Future<Response<String>> _apiCostCenterPost({required CostCenterDTO? body}) {
    final $url = '/api/CostCenter';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<CostCenterDTOPagedResult>> _apiCostCenterSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/CostCenter/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<CostCenterDTOPagedResult, CostCenterDTOPagedResult>($request);
  }

  @override
  Future<Response<CostCenterDTO>> _apiCostCenterIdGet({required String? id}) {
    final $url = '/api/CostCenter/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<CostCenterDTO, CostCenterDTO>($request);
  }

  @override
  Future<Response<bool>> _apiCostCenterIdPut(
      {required String? id, required CostCenterDTO? body}) {
    final $url = '/api/CostCenter/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiCostCenterIdDelete({required String? id}) {
    final $url = '/api/CostCenter/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<DocumentDTO>>> _apiDocumentGet() {
    final $url = '/api/Document';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<DocumentDTO>, DocumentDTO>($request);
  }

  @override
  Future<Response<String>> _apiDocumentPost({required DocumentDTO? body}) {
    final $url = '/api/Document';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<DocumentDTOPagedResult>> _apiDocumentSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/Document/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<DocumentDTOPagedResult, DocumentDTOPagedResult>($request);
  }

  @override
  Future<Response<DocumentDTO>> _apiDocumentIdGet({required String? id}) {
    final $url = '/api/Document/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<DocumentDTO, DocumentDTO>($request);
  }

  @override
  Future<Response<bool>> _apiDocumentIdPut(
      {required String? id, required DocumentDTO? body}) {
    final $url = '/api/Document/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiDocumentIdDelete({required String? id}) {
    final $url = '/api/Document/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<EngineDTO>>> _apiEngineGet() {
    final $url = '/api/Engine';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<EngineDTO>, EngineDTO>($request);
  }

  @override
  Future<Response<String>> _apiEnginePost({required EngineDTO? body}) {
    final $url = '/api/Engine';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<EngineDTOPagedResult>> _apiEngineSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/Engine/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<EngineDTOPagedResult, EngineDTOPagedResult>($request);
  }

  @override
  Future<Response<EngineDTO>> _apiEngineIdGet({required String? id}) {
    final $url = '/api/Engine/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<EngineDTO, EngineDTO>($request);
  }

  @override
  Future<Response<bool>> _apiEngineIdPut(
      {required String? id, required EngineDTO? body}) {
    final $url = '/api/Engine/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiEngineIdDelete({required String? id}) {
    final $url = '/api/Engine/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<FuelLoadDTO>>> _apiFuelLoadGet() {
    final $url = '/api/FuelLoad';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<FuelLoadDTO>, FuelLoadDTO>($request);
  }

  @override
  Future<Response<String>> _apiFuelLoadPost({required FuelLoadDTO? body}) {
    final $url = '/api/FuelLoad';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<FuelLoadDetailDTOPagedResult>> _apiFuelLoadSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/FuelLoad/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<FuelLoadDetailDTOPagedResult,
        FuelLoadDetailDTOPagedResult>($request);
  }

  @override
  Future<Response<FuelLoadDTO>> _apiFuelLoadIdGet({required String? id}) {
    final $url = '/api/FuelLoad/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<FuelLoadDTO, FuelLoadDTO>($request);
  }

  @override
  Future<Response<bool>> _apiFuelLoadIdPut(
      {required String? id, required FuelLoadDTO? body}) {
    final $url = '/api/FuelLoad/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiFuelLoadIdDelete({required String? id}) {
    final $url = '/api/FuelLoad/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<FuelMeasureDTO>>> _apiFuelMeasureGet() {
    final $url = '/api/FuelMeasure';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<FuelMeasureDTO>, FuelMeasureDTO>($request);
  }

  @override
  Future<Response<String>> _apiFuelMeasurePost(
      {required FuelMeasureDTO? body}) {
    final $url = '/api/FuelMeasure';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<FuelMeasureDTOPagedResult>> _apiFuelMeasureSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/FuelMeasure/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<FuelMeasureDTOPagedResult, FuelMeasureDTOPagedResult>($request);
  }

  @override
  Future<Response<FuelMeasureDTO>> _apiFuelMeasureIdGet({required String? id}) {
    final $url = '/api/FuelMeasure/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<FuelMeasureDTO, FuelMeasureDTO>($request);
  }

  @override
  Future<Response<bool>> _apiFuelMeasureIdPut(
      {required String? id, required FuelMeasureDTO? body}) {
    final $url = '/api/FuelMeasure/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiFuelMeasureIdDelete({required String? id}) {
    final $url = '/api/FuelMeasure/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<FuelTypeDTO>>> _apiFuelTypeGet() {
    final $url = '/api/FuelType';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<FuelTypeDTO>, FuelTypeDTO>($request);
  }

  @override
  Future<Response<String>> _apiFuelTypePost({required FuelTypeDTO? body}) {
    final $url = '/api/FuelType';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<FuelTypeDTOPagedResult>> _apiFuelTypeSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/FuelType/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<FuelTypeDTOPagedResult, FuelTypeDTOPagedResult>($request);
  }

  @override
  Future<Response<FuelTypeDTO>> _apiFuelTypeIdGet({required String? id}) {
    final $url = '/api/FuelType/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<FuelTypeDTO, FuelTypeDTO>($request);
  }

  @override
  Future<Response<bool>> _apiFuelTypeIdPut(
      {required String? id, required FuelTypeDTO? body}) {
    final $url = '/api/FuelType/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiFuelTypeIdDelete({required String? id}) {
    final $url = '/api/FuelType/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<FuelVendorDTO>>> _apiFuelVendorGet() {
    final $url = '/api/FuelVendor';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<FuelVendorDTO>, FuelVendorDTO>($request);
  }

  @override
  Future<Response<String>> _apiFuelVendorPost({required FuelVendorDTO? body}) {
    final $url = '/api/FuelVendor';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<FuelVendorDTOPagedResult>> _apiFuelVendorSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/FuelVendor/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<FuelVendorDTOPagedResult, FuelVendorDTOPagedResult>($request);
  }

  @override
  Future<Response<FuelVendorDTO>> _apiFuelVendorIdGet({required String? id}) {
    final $url = '/api/FuelVendor/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<FuelVendorDTO, FuelVendorDTO>($request);
  }

  @override
  Future<Response<bool>> _apiFuelVendorIdPut(
      {required String? id, required FuelVendorDTO? body}) {
    final $url = '/api/FuelVendor/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiFuelVendorIdDelete({required String? id}) {
    final $url = '/api/FuelVendor/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<ImageDTO>>> _apiImageGet() {
    final $url = '/api/Image';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<ImageDTO>, ImageDTO>($request);
  }

  @override
  Future<Response<String>> _apiImagePost({required ImageDTO? body}) {
    final $url = '/api/Image';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<ImageDTOPagedResult>> _apiImageSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/Image/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ImageDTOPagedResult, ImageDTOPagedResult>($request);
  }

  @override
  Future<Response<ImageDTO>> _apiImageIdGet({required String? id}) {
    final $url = '/api/Image/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ImageDTO, ImageDTO>($request);
  }

  @override
  Future<Response<bool>> _apiImageIdPut(
      {required String? id, required ImageDTO? body}) {
    final $url = '/api/Image/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiImageIdDelete({required String? id}) {
    final $url = '/api/Image/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<IncidentDTO>>> _apiIncidentGet() {
    final $url = '/api/Incident';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<IncidentDTO>, IncidentDTO>($request);
  }

  @override
  Future<Response<String>> _apiIncidentPost({required IncidentDTO? body}) {
    final $url = '/api/Incident';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<IncidentDTOPagedResult>> _apiIncidentSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/Incident/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<IncidentDTOPagedResult, IncidentDTOPagedResult>($request);
  }

  @override
  Future<Response<IncidentDTO>> _apiIncidentIdGet({required String? id}) {
    final $url = '/api/Incident/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<IncidentDTO, IncidentDTO>($request);
  }

  @override
  Future<Response<bool>> _apiIncidentIdPut(
      {required String? id, required IncidentDTO? body}) {
    final $url = '/api/Incident/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiIncidentIdDelete({required String? id}) {
    final $url = '/api/Incident/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<IncisoDTO>>> _apiIncisoGet() {
    final $url = '/api/Inciso';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<IncisoDTO>, IncisoDTO>($request);
  }

  @override
  Future<Response<String>> _apiIncisoPost({required IncisoDTO? body}) {
    final $url = '/api/Inciso';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<IncisoDTOPagedResult>> _apiIncisoSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/Inciso/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<IncisoDTOPagedResult, IncisoDTOPagedResult>($request);
  }

  @override
  Future<Response<IncisoDTO>> _apiIncisoIdGet({required String? id}) {
    final $url = '/api/Inciso/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<IncisoDTO, IncisoDTO>($request);
  }

  @override
  Future<Response<bool>> _apiIncisoIdPut(
      {required String? id, required IncisoDTO? body}) {
    final $url = '/api/Inciso/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiIncisoIdDelete({required String? id}) {
    final $url = '/api/Inciso/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<InsuranceCompanyDTO>>> _apiInsuranceCompanyGet() {
    final $url = '/api/InsuranceCompany';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<List<InsuranceCompanyDTO>, InsuranceCompanyDTO>($request);
  }

  @override
  Future<Response<String>> _apiInsuranceCompanyPost(
      {required InsuranceCompanyDTO? body}) {
    final $url = '/api/InsuranceCompany';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<InsuranceCompanyDTOPagedResult>>
      _apiInsuranceCompanySearchGet(
          {required int? page,
          String? search,
          String? orderByPropertyName,
          String? sortOrder,
          required int? pageSize}) {
    final $url = '/api/InsuranceCompany/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<InsuranceCompanyDTOPagedResult,
        InsuranceCompanyDTOPagedResult>($request);
  }

  @override
  Future<Response<InsuranceCompanyDTO>> _apiInsuranceCompanyIdGet(
      {required String? id}) {
    final $url = '/api/InsuranceCompany/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<InsuranceCompanyDTO, InsuranceCompanyDTO>($request);
  }

  @override
  Future<Response<bool>> _apiInsuranceCompanyIdPut(
      {required String? id, required InsuranceCompanyDTO? body}) {
    final $url = '/api/InsuranceCompany/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiInsuranceCompanyIdDelete({required String? id}) {
    final $url = '/api/InsuranceCompany/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<MachineDTO>>> _apiMachineGet() {
    final $url = '/api/Machine';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<MachineDTO>, MachineDTO>($request);
  }

  @override
  Future<Response<String>> _apiMachinePost({required MachineDTO? body}) {
    final $url = '/api/Machine';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<MachineDTOPagedResult>> _apiMachineSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/Machine/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<MachineDTOPagedResult, MachineDTOPagedResult>($request);
  }

  @override
  Future<Response<ProjectCompanyDTO>> _apiMachineDrillRigProjectIdGet(
      {required String? id}) {
    final $url = '/api/Machine/DrillRigProject/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ProjectCompanyDTO, ProjectCompanyDTO>($request);
  }

  @override
  Future<Response<List<MaintenanceDTO>>> _apiMaintenanceGet() {
    final $url = '/api/Maintenance';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<MaintenanceDTO>, MaintenanceDTO>($request);
  }

  @override
  Future<Response<String>> _apiMaintenancePost(
      {required MaintenanceDTO? body}) {
    final $url = '/api/Maintenance';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<MaintenanceDetailDTOPagedResult>> _apiMaintenanceSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/Maintenance/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<MaintenanceDetailDTOPagedResult,
        MaintenanceDetailDTOPagedResult>($request);
  }

  @override
  Future<Response<MaintenanceDTO>> _apiMaintenanceIdGet({required String? id}) {
    final $url = '/api/Maintenance/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<MaintenanceDTO, MaintenanceDTO>($request);
  }

  @override
  Future<Response<bool>> _apiMaintenanceIdPut(
      {required String? id, required MaintenanceDTO? body}) {
    final $url = '/api/Maintenance/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiMaintenanceIdDelete({required String? id}) {
    final $url = '/api/Maintenance/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<MaintenanceGroupDTO>>> _apiMaintenanceGroupGet() {
    final $url = '/api/MaintenanceGroup';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<List<MaintenanceGroupDTO>, MaintenanceGroupDTO>($request);
  }

  @override
  Future<Response<String>> _apiMaintenanceGroupPost(
      {required MaintenanceGroupDTO? body}) {
    final $url = '/api/MaintenanceGroup';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<MaintenanceGroupDTOPagedResult>>
      _apiMaintenanceGroupSearchGet(
          {required int? page,
          String? search,
          String? orderByPropertyName,
          String? sortOrder,
          required int? pageSize}) {
    final $url = '/api/MaintenanceGroup/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<MaintenanceGroupDTOPagedResult,
        MaintenanceGroupDTOPagedResult>($request);
  }

  @override
  Future<Response<MaintenanceGroupDTO>> _apiMaintenanceGroupIdGet(
      {required String? id}) {
    final $url = '/api/MaintenanceGroup/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<MaintenanceGroupDTO, MaintenanceGroupDTO>($request);
  }

  @override
  Future<Response<bool>> _apiMaintenanceGroupIdPut(
      {required String? id, required MaintenanceGroupDTO? body}) {
    final $url = '/api/MaintenanceGroup/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiMaintenanceGroupIdDelete({required String? id}) {
    final $url = '/api/MaintenanceGroup/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<MaintenancePartDTO>>> _apiMaintenancePartGet() {
    final $url = '/api/MaintenancePart';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<MaintenancePartDTO>, MaintenancePartDTO>($request);
  }

  @override
  Future<Response<String>> _apiMaintenancePartPost(
      {required MaintenancePartDTO? body}) {
    final $url = '/api/MaintenancePart';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<MaintenancePartDTOPagedResult>> _apiMaintenancePartSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/MaintenancePart/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<MaintenancePartDTOPagedResult,
        MaintenancePartDTOPagedResult>($request);
  }

  @override
  Future<Response<MaintenancePartDTO>> _apiMaintenancePartIdGet(
      {required String? id}) {
    final $url = '/api/MaintenancePart/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<MaintenancePartDTO, MaintenancePartDTO>($request);
  }

  @override
  Future<Response<bool>> _apiMaintenancePartIdPut(
      {required String? id, required MaintenancePartDTO? body}) {
    final $url = '/api/MaintenancePart/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiMaintenancePartIdDelete({required String? id}) {
    final $url = '/api/MaintenancePart/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<MaintenanceTypeDTO>>> _apiMaintenanceTypeGet() {
    final $url = '/api/MaintenanceType';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<MaintenanceTypeDTO>, MaintenanceTypeDTO>($request);
  }

  @override
  Future<Response<String>> _apiMaintenanceTypePost(
      {required MaintenanceTypeDTO? body}) {
    final $url = '/api/MaintenanceType';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<MaintenanceTypeDTOPagedResult>> _apiMaintenanceTypeSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/MaintenanceType/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<MaintenanceTypeDTOPagedResult,
        MaintenanceTypeDTOPagedResult>($request);
  }

  @override
  Future<Response<MaintenanceTypeDTO>> _apiMaintenanceTypeIdGet(
      {required String? id}) {
    final $url = '/api/MaintenanceType/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<MaintenanceTypeDTO, MaintenanceTypeDTO>($request);
  }

  @override
  Future<Response<bool>> _apiMaintenanceTypeIdPut(
      {required String? id, required MaintenanceTypeDTO? body}) {
    final $url = '/api/MaintenanceType/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiMaintenanceTypeIdDelete({required String? id}) {
    final $url = '/api/MaintenanceType/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<MeasureDTO>>> _apiMeasureGet() {
    final $url = '/api/Measure';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<MeasureDTO>, MeasureDTO>($request);
  }

  @override
  Future<Response<String>> _apiMeasurePost({required MeasureDTO? body}) {
    final $url = '/api/Measure';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<MeasureDTOPagedResult>> _apiMeasureSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/Measure/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<MeasureDTOPagedResult, MeasureDTOPagedResult>($request);
  }

  @override
  Future<Response<MeasureDTO>> _apiMeasureIdGet({required String? id}) {
    final $url = '/api/Measure/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<MeasureDTO, MeasureDTO>($request);
  }

  @override
  Future<Response<bool>> _apiMeasureIdPut(
      {required String? id, required MeasureDTO? body}) {
    final $url = '/api/Measure/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiMeasureIdDelete({required String? id}) {
    final $url = '/api/Measure/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<ModelDTO>>> _apiModelGet() {
    final $url = '/api/Model';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<ModelDTO>, ModelDTO>($request);
  }

  @override
  Future<Response<String>> _apiModelPost({required ModelDTO? body}) {
    final $url = '/api/Model';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<ModelDTOPagedResult>> _apiModelSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/Model/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ModelDTOPagedResult, ModelDTOPagedResult>($request);
  }

  @override
  Future<Response<ModelDTO>> _apiModelIdGet({required String? id}) {
    final $url = '/api/Model/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ModelDTO, ModelDTO>($request);
  }

  @override
  Future<Response<bool>> _apiModelIdPut(
      {required String? id, required ModelDTO? body}) {
    final $url = '/api/Model/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiModelIdDelete({required String? id}) {
    final $url = '/api/Model/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<PackagePolicyDTO>>> _apiPackagePolicyGet() {
    final $url = '/api/PackagePolicy';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<PackagePolicyDTO>, PackagePolicyDTO>($request);
  }

  @override
  Future<Response<String>> _apiPackagePolicyPost(
      {required PackagePolicyDTO? body}) {
    final $url = '/api/PackagePolicy';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<PackagePolicyDTOPagedResult>> _apiPackagePolicySearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/PackagePolicy/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<PackagePolicyDTOPagedResult,
        PackagePolicyDTOPagedResult>($request);
  }

  @override
  Future<Response<PackagePolicyDTO>> _apiPackagePolicyIdGet(
      {required String? id}) {
    final $url = '/api/PackagePolicy/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<PackagePolicyDTO, PackagePolicyDTO>($request);
  }

  @override
  Future<Response<bool>> _apiPackagePolicyIdPut(
      {required String? id, required PackagePolicyDTO? body}) {
    final $url = '/api/PackagePolicy/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiPackagePolicyIdDelete({required String? id}) {
    final $url = '/api/PackagePolicy/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<PartDTO>>> _apiPartGet() {
    final $url = '/api/Part';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<PartDTO>, PartDTO>($request);
  }

  @override
  Future<Response<String>> _apiPartPost({required PartDTO? body}) {
    final $url = '/api/Part';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<PartDTOPagedResult>> _apiPartSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/Part/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<PartDTOPagedResult, PartDTOPagedResult>($request);
  }

  @override
  Future<Response<PartDTO>> _apiPartIdGet({required String? id}) {
    final $url = '/api/Part/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<PartDTO, PartDTO>($request);
  }

  @override
  Future<Response<bool>> _apiPartIdPut(
      {required String? id, required PartDTO? body}) {
    final $url = '/api/Part/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiPartIdDelete({required String? id}) {
    final $url = '/api/Part/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<PolicyDTO>>> _apiPolicyGet() {
    final $url = '/api/Policy';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<PolicyDTO>, PolicyDTO>($request);
  }

  @override
  Future<Response<String>> _apiPolicyPost({required PolicyDTO? body}) {
    final $url = '/api/Policy';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<PolicyDTOPagedResult>> _apiPolicySearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/Policy/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<PolicyDTOPagedResult, PolicyDTOPagedResult>($request);
  }

  @override
  Future<Response<PolicyDTO>> _apiPolicyIdGet({required String? id}) {
    final $url = '/api/Policy/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<PolicyDTO, PolicyDTO>($request);
  }

  @override
  Future<Response<bool>> _apiPolicyIdPut(
      {required String? id, required PolicyDTO? body}) {
    final $url = '/api/Policy/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiPolicyIdDelete({required String? id}) {
    final $url = '/api/Policy/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<PolicyStatusDTO>>> _apiPolicyStatusGet() {
    final $url = '/api/PolicyStatus';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<PolicyStatusDTO>, PolicyStatusDTO>($request);
  }

  @override
  Future<Response<String>> _apiPolicyStatusPost(
      {required PolicyStatusDTO? body}) {
    final $url = '/api/PolicyStatus';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<PolicyStatusDTOPagedResult>> _apiPolicyStatusSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/PolicyStatus/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<PolicyStatusDTOPagedResult, PolicyStatusDTOPagedResult>($request);
  }

  @override
  Future<Response<PolicyStatusDTO>> _apiPolicyStatusIdGet(
      {required String? id}) {
    final $url = '/api/PolicyStatus/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<PolicyStatusDTO, PolicyStatusDTO>($request);
  }

  @override
  Future<Response<bool>> _apiPolicyStatusIdPut(
      {required String? id, required PolicyStatusDTO? body}) {
    final $url = '/api/PolicyStatus/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiPolicyStatusIdDelete({required String? id}) {
    final $url = '/api/PolicyStatus/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<ProjectDTO>>> _apiProjectGet() {
    final $url = '/api/Project';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<ProjectDTO>, ProjectDTO>($request);
  }

  @override
  Future<Response<String>> _apiProjectPost({required ProjectDTO? body}) {
    final $url = '/api/Project';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<ProjectDTOPagedResult>> _apiProjectSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/Project/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ProjectDTOPagedResult, ProjectDTOPagedResult>($request);
  }

  @override
  Future<Response<ProjectDTO>> _apiProjectIdGet({required String? id}) {
    final $url = '/api/Project/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ProjectDTO, ProjectDTO>($request);
  }

  @override
  Future<Response<bool>> _apiProjectIdPut(
      {required String? id, required ProjectDTO? body}) {
    final $url = '/api/Project/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiProjectIdDelete({required String? id}) {
    final $url = '/api/Project/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<ReminderPostDTO>>> _apiReminderGet() {
    final $url = '/api/Reminder';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<ReminderPostDTO>, ReminderPostDTO>($request);
  }

  @override
  Future<Response<String>> _apiReminderPost({required ReminderPostDTO? body}) {
    final $url = '/api/Reminder';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<ReminderDTOPagedResult>> _apiReminderSearchGet(
      {String? id,
      required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/Reminder/Search';
    final $params = <String, dynamic>{
      'Id': id,
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<ReminderDTOPagedResult, ReminderDTOPagedResult>($request);
  }

  @override
  Future<Response<ReminderPostDTO>> _apiReminderIdGet({required String? id}) {
    final $url = '/api/Reminder/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ReminderPostDTO, ReminderPostDTO>($request);
  }

  @override
  Future<Response<bool>> _apiReminderIdPut(
      {required String? id, required ReminderPostDTO? body}) {
    final $url = '/api/Reminder/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiReminderIdDelete({required String? id}) {
    final $url = '/api/Reminder/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<RoleDTO>>> _apiRoleGet() {
    final $url = '/api/Role';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<RoleDTO>, RoleDTO>($request);
  }

  @override
  Future<Response<String>> _apiRolePost({required RoleDTO? body}) {
    final $url = '/api/Role';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<RoleDTOPagedResult>> _apiRoleSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/Role/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<RoleDTOPagedResult, RoleDTOPagedResult>($request);
  }

  @override
  Future<Response<RoleDTO>> _apiRoleIdGet({required String? id}) {
    final $url = '/api/Role/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<RoleDTO, RoleDTO>($request);
  }

  @override
  Future<Response<bool>> _apiRoleIdPut(
      {required String? id, required RoleDTO? body}) {
    final $url = '/api/Role/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiRoleIdDelete({required String? id}) {
    final $url = '/api/Role/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<ServiceDTO>>> _apiServiceGet() {
    final $url = '/api/Service';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<ServiceDTO>, ServiceDTO>($request);
  }

  @override
  Future<Response<String>> _apiServicePost({required ServiceDTO? body}) {
    final $url = '/api/Service';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<ServiceDTOPagedResult>> _apiServiceSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/Service/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<ServiceDTOPagedResult, ServiceDTOPagedResult>($request);
  }

  @override
  Future<Response<ServiceDTO>> _apiServiceIdGet({required String? id}) {
    final $url = '/api/Service/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ServiceDTO, ServiceDTO>($request);
  }

  @override
  Future<Response<bool>> _apiServiceIdPut(
      {required String? id, required ServiceDTO? body}) {
    final $url = '/api/Service/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiServiceIdDelete({required String? id}) {
    final $url = '/api/Service/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<AppUserDTO>>> _apiUserGet() {
    final $url = '/api/User';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<AppUserDTO>, AppUserDTO>($request);
  }

  @override
  Future<Response<String>> _apiUserPost({required UserPostDTO? body}) {
    final $url = '/api/User';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<AppUserDTOPagedResult>> _apiUserSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/User/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<AppUserDTOPagedResult, AppUserDTOPagedResult>($request);
  }

  @override
  Future<Response<AppUserDTO>> _apiUserIdGet({required String? id}) {
    final $url = '/api/User/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<AppUserDTO, AppUserDTO>($request);
  }

  @override
  Future<Response<EditUserResponse>> _apiUserIdPut(
      {required String? id, required ApiUserIdPut$RequestBody? body}) {
    final $url = '/api/User/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<EditUserResponse, EditUserResponse>($request);
  }

  @override
  Future<Response<EditUserResponse>> _apiUserEditUserAppIdPut(
      {required String? id, required UserPutDTO? body}) {
    final $url = '/api/User/EditUserApp/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<EditUserResponse, EditUserResponse>($request);
  }

  @override
  Future<Response<EditUserResponse>> _apiUserUploadImageIdPost(
      {required String? id,
      required ApiUserUploadImageIdPost$RequestBody? body}) {
    final $url = '/api/User/UploadImage/${id}';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<EditUserResponse, EditUserResponse>($request);
  }

  @override
  Future<Response<List<UserVehicleDTO>>> _apiUserVehicleGet() {
    final $url = '/api/UserVehicle';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<UserVehicleDTO>, UserVehicleDTO>($request);
  }

  @override
  Future<Response<String>> _apiUserVehiclePost(
      {required UserVehicleDTO? body}) {
    final $url = '/api/UserVehicle';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<UserVehicleDTOPagedResult>> _apiUserVehicleSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/UserVehicle/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<UserVehicleDTOPagedResult, UserVehicleDTOPagedResult>($request);
  }

  @override
  Future<Response<UserVehicleDTO>> _apiUserVehicleIdGet({required String? id}) {
    final $url = '/api/UserVehicle/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<UserVehicleDTO, UserVehicleDTO>($request);
  }

  @override
  Future<Response<bool>> _apiUserVehicleIdPut(
      {required String? id, required UserVehicleDTO? body}) {
    final $url = '/api/UserVehicle/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiUserVehicleIdDelete({required String? id}) {
    final $url = '/api/UserVehicle/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<VehicleDTO>>> _apiVehicleGet() {
    final $url = '/api/Vehicle';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<VehicleDTO>, VehicleDTO>($request);
  }

  @override
  Future<Response<String>> _apiVehiclePost({required List<int> partFile}) {
    final $url = '/api/Vehicle';
    final $parts = <PartValue>[PartValueFile<List<int>>('partFile', partFile)];
    final $request =
        Request('POST', $url, client.baseUrl, parts: $parts, multipart: true);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<VehicleDTOPagedResult>> _apiVehicleSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/Vehicle/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<VehicleDTOPagedResult, VehicleDTOPagedResult>($request);
  }

  @override
  Future<Response<VehicleInboxDTOPagedResult>> _apiVehicleInboxGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize,
      bool? active}) {
    final $url = '/api/Vehicle/Inbox';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize,
      'active': active
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<VehicleInboxDTOPagedResult, VehicleInboxDTOPagedResult>($request);
  }

  @override
  Future<Response<String>> _apiVehicleSavePost(
      {required VehiclePostDTO? body}) {
    final $url = '/api/Vehicle/Save';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<VehicleDetailDTO>> _apiVehicleIdGet({required String? id}) {
    final $url = '/api/Vehicle/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<VehicleDetailDTO, VehicleDetailDTO>($request);
  }

  @override
  Future<Response<bool>> _apiVehicleIdPut(
      {required String? id,
      List<String>? photosToRemove,
      required String? vin,
      required String? machineId,
      required String? description,
      required String? economicNumber,
      String? assignedId,
      String? brandId,
      String? modelId,
      int? modelYear,
      String? engineId,
      String? placas,
      int? drillRigId,
      String? policyId,
      String? incisoId,
      String? packagePolicyId,
      String? measureId,
      String? fuelMeasureId,
      String? fuelTypeId,
      String? companyId,
      String? categoryId,
      int? tankSize,
      bool? active,
      required List<int> partFile}) {
    final $url = '/api/Vehicle/${id}';
    final $params = <String, dynamic>{
      'PhotosToRemove': photosToRemove,
      'VIN': vin,
      'MachineId': machineId,
      'Description': description,
      'EconomicNumber': economicNumber,
      'AssignedId': assignedId,
      'BrandId': brandId,
      'ModelId': modelId,
      'ModelYear': modelYear,
      'EngineId': engineId,
      'Placas': placas,
      'DrillRigId': drillRigId,
      'PolicyId': policyId,
      'IncisoId': incisoId,
      'PackagePolicyId': packagePolicyId,
      'MeasureId': measureId,
      'FuelMeasureId': fuelMeasureId,
      'FuelTypeId': fuelTypeId,
      'CompanyId': companyId,
      'CategoryId': categoryId,
      'TankSize': tankSize,
      'Active': active
    };
    final $parts = <PartValue>[PartValueFile<List<int>>('partFile', partFile)];
    final $request = Request('PUT', $url, client.baseUrl,
        parts: $parts, multipart: true, parameters: $params);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiVehicleIdDelete({required String? id}) {
    final $url = '/api/Vehicle/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<VehicleNewEditDTO>> _apiVehicleGetFormGet({String? id}) {
    final $url = '/api/Vehicle/GetForm';
    final $params = <String, dynamic>{'id': id};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<VehicleNewEditDTO, VehicleNewEditDTO>($request);
  }

  @override
  Future<Response<bool>> _apiVehicleEditIdPut(
      {required String? id, required VehiclePutDTO? body}) {
    final $url = '/api/Vehicle/Edit/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<ProjectCompanyDTO>> _apiVehicleIdDrillRigDIdPut(
      {required String? id, required String? dId}) {
    final $url = '/api/Vehicle/${id}/DrillRig/${dId}';
    final $request = Request('PUT', $url, client.baseUrl);
    return client.send<ProjectCompanyDTO, ProjectCompanyDTO>($request);
  }

  @override
  Future<Response<bool>> _apiVehicleIdActivePut({required String? id}) {
    final $url = '/api/Vehicle/${id}/Active';
    final $request = Request('PUT', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<dynamic>> _apiVehicleDownloadGet({List<String>? vehicles}) {
    final $url = '/api/Vehicle/Download';
    final $params = <String, dynamic>{'vehicles': vehicles};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<VehicleTypeDTO>>> _apiVehicleTypeGet() {
    final $url = '/api/VehicleType';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<VehicleTypeDTO>, VehicleTypeDTO>($request);
  }

  @override
  Future<Response<String>> _apiVehicleTypePost(
      {required VehicleTypeDTO? body}) {
    final $url = '/api/VehicleType';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<VehicleTypeDTOPagedResult>> _apiVehicleTypeSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/VehicleType/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<VehicleTypeDTOPagedResult, VehicleTypeDTOPagedResult>($request);
  }

  @override
  Future<Response<VehicleTypeDTO>> _apiVehicleTypeIdGet({required String? id}) {
    final $url = '/api/VehicleType/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<VehicleTypeDTO, VehicleTypeDTO>($request);
  }

  @override
  Future<Response<bool>> _apiVehicleTypeIdPut(
      {required String? id, required VehicleTypeDTO? body}) {
    final $url = '/api/VehicleType/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiVehicleTypeIdDelete({required String? id}) {
    final $url = '/api/VehicleType/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<VendorDTO>>> _apiVendorGet() {
    final $url = '/api/Vendor';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<VendorDTO>, VendorDTO>($request);
  }

  @override
  Future<Response<String>> _apiVendorPost({required VendorDTO? body}) {
    final $url = '/api/Vendor';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<String, String>($request);
  }

  @override
  Future<Response<VendorDTOPagedResult>> _apiVendorSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      String? sortOrder,
      required int? pageSize}) {
    final $url = '/api/Vendor/Search';
    final $params = <String, dynamic>{
      'Page': page,
      'Search': search,
      'OrderByPropertyName': orderByPropertyName,
      'SortOrder': sortOrder,
      'PageSize': pageSize
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<VendorDTOPagedResult, VendorDTOPagedResult>($request);
  }

  @override
  Future<Response<VendorDTO>> _apiVendorIdGet({required String? id}) {
    final $url = '/api/Vendor/${id}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<VendorDTO, VendorDTO>($request);
  }

  @override
  Future<Response<bool>> _apiVendorIdPut(
      {required String? id, required VendorDTO? body}) {
    final $url = '/api/Vendor/${id}';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiVendorIdDelete({required String? id}) {
    final $url = '/api/Vendor/${id}';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<bool, bool>($request);
  }
}
