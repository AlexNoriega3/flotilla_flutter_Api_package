// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'package:chopper/chopper.dart' as chopper;
import 'FMA.enums.swagger.dart' as enums;
export 'FMA.enums.swagger.dart';

part 'FMA.swagger.chopper.dart';
part 'FMA.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class FMA extends ChopperService {
  static FMA create(
      {ChopperClient? client,
      Authenticator? authenticator,
      String? baseUrl,
      Iterable<dynamic>? interceptors}) {
    if (client != null) {
      return _$FMA(client);
    }

    final newClient = ChopperClient(
        services: [_$FMA()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? 'http://');
    return _$FMA(newClient);
  }

  ///Endpoint para realizar el login del usuario de los usuarios
  Future<chopper.Response> apiAccountLoginPost({required LoginDTO? body}) {
    return _apiAccountLoginPost(body: body);
  }

  ///Endpoint para realizar el login del usuario de los usuarios
  @Post(path: '/api/Account/login')
  Future<chopper.Response> _apiAccountLoginPost(
      {@Body() required LoginDTO? body});

  ///Endpoint para realizar el login del usuario de los usuarios
  Future<chopper.Response> apiAccountRefreshtokenPost(
      {required AuthResponseDTO? body}) {
    return _apiAccountRefreshtokenPost(body: body);
  }

  ///Endpoint para realizar el login del usuario de los usuarios
  @Post(path: '/api/Account/refreshtoken')
  Future<chopper.Response> _apiAccountRefreshtokenPost(
      {@Body() required AuthResponseDTO? body});

  ///
  Future<chopper.Response<bool>> apiAccountLogoutPost() {
    return _apiAccountLogoutPost();
  }

  ///
  @Post(path: '/api/Account/logout', optionalBody: true)
  Future<chopper.Response<bool>> _apiAccountLogoutPost();

  ///
  ///@param userEmail
  ///@param currentPassword
  ///@param newPassword
  ///@param confirmPassword
  Future<chopper.Response>
      apiAccountChangepasswordUserEmailCurrentPasswordNewPasswordConfirmPasswordPost(
          {required String? userEmail,
          required String? currentPassword,
          required String? newPassword,
          required String? confirmPassword}) {
    return _apiAccountChangepasswordUserEmailCurrentPasswordNewPasswordConfirmPasswordPost(
        userEmail: userEmail,
        currentPassword: currentPassword,
        newPassword: newPassword,
        confirmPassword: confirmPassword);
  }

  ///
  ///@param userEmail
  ///@param currentPassword
  ///@param newPassword
  ///@param confirmPassword
  @Post(
      path:
          '/api/Account/changepassword/{userEmail},{currentPassword},{newPassword},{confirmPassword}',
      optionalBody: true)
  Future<chopper.Response>
      _apiAccountChangepasswordUserEmailCurrentPasswordNewPasswordConfirmPasswordPost(
          {@Path('userEmail') required String? userEmail,
          @Path('currentPassword') required String? currentPassword,
          @Path('newPassword') required String? newPassword,
          @Path('confirmPassword') required String? confirmPassword});

  ///
  ///@param email
  Future<chopper.Response> apiAccountForgotpasswordPost({String? email}) {
    return _apiAccountForgotpasswordPost(email: email);
  }

  ///
  ///@param email
  @Post(path: '/api/Account/forgotpassword', optionalBody: true)
  Future<chopper.Response> _apiAccountForgotpasswordPost(
      {@Query('email') String? email});

  ///
  Future<chopper.Response<bool>> apiAccountResetpasswordPost(
      {required ResetPasswordModel? body}) {
    return _apiAccountResetpasswordPost(body: body);
  }

  ///
  @Post(path: '/api/Account/resetpassword')
  Future<chopper.Response<bool>> _apiAccountResetpasswordPost(
      {@Body() required ResetPasswordModel? body});

  ///
  Future<chopper.Response<List<BrandDTO>>> apiBrandGet() {
    generatedMapping.putIfAbsent(BrandDTO, () => BrandDTO.fromJsonFactory);

    return _apiBrandGet();
  }

  ///
  @Get(path: '/api/Brand')
  Future<chopper.Response<List<BrandDTO>>> _apiBrandGet();

  ///
  Future<chopper.Response<String>> apiBrandPost({required BrandDTO? body}) {
    return _apiBrandPost(body: body);
  }

  ///
  @Post(path: '/api/Brand')
  Future<chopper.Response<String>> _apiBrandPost(
      {@Body() required BrandDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<BrandDTOPagedResult>> apiBrandSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(
        BrandDTOPagedResult, () => BrandDTOPagedResult.fromJsonFactory);

    return _apiBrandSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/Brand/Search')
  Future<chopper.Response<BrandDTOPagedResult>> _apiBrandSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<BrandDTO>> apiBrandIdGet({required String? id}) {
    generatedMapping.putIfAbsent(BrandDTO, () => BrandDTO.fromJsonFactory);

    return _apiBrandIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Brand/{id}')
  Future<chopper.Response<BrandDTO>> _apiBrandIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiBrandIdPut(
      {required String? id, required BrandDTO? body}) {
    return _apiBrandIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Brand/{id}')
  Future<chopper.Response<bool>> _apiBrandIdPut(
      {@Path('id') required String? id, @Body() required BrandDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiBrandIdDelete({required String? id}) {
    return _apiBrandIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Brand/{id}')
  Future<chopper.Response<bool>> _apiBrandIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<CategoryDTO>>> apiCategoryGet() {
    generatedMapping.putIfAbsent(
        CategoryDTO, () => CategoryDTO.fromJsonFactory);

    return _apiCategoryGet();
  }

  ///
  @Get(path: '/api/Category')
  Future<chopper.Response<List<CategoryDTO>>> _apiCategoryGet();

  ///
  Future<chopper.Response<String>> apiCategoryPost(
      {required CategoryDTO? body}) {
    return _apiCategoryPost(body: body);
  }

  ///
  @Post(path: '/api/Category')
  Future<chopper.Response<String>> _apiCategoryPost(
      {@Body() required CategoryDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<CategoryDTOPagedResult>> apiCategorySearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(
        CategoryDTOPagedResult, () => CategoryDTOPagedResult.fromJsonFactory);

    return _apiCategorySearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/Category/Search')
  Future<chopper.Response<CategoryDTOPagedResult>> _apiCategorySearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<CategoryDTO>> apiCategoryIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        CategoryDTO, () => CategoryDTO.fromJsonFactory);

    return _apiCategoryIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Category/{id}')
  Future<chopper.Response<CategoryDTO>> _apiCategoryIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiCategoryIdPut(
      {required String? id, required CategoryDTO? body}) {
    return _apiCategoryIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Category/{id}')
  Future<chopper.Response<bool>> _apiCategoryIdPut(
      {@Path('id') required String? id, @Body() required CategoryDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiCategoryIdDelete({required String? id}) {
    return _apiCategoryIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Category/{id}')
  Future<chopper.Response<bool>> _apiCategoryIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<CompanyDTO>>> apiCompanyGet() {
    generatedMapping.putIfAbsent(CompanyDTO, () => CompanyDTO.fromJsonFactory);

    return _apiCompanyGet();
  }

  ///
  @Get(path: '/api/Company')
  Future<chopper.Response<List<CompanyDTO>>> _apiCompanyGet();

  ///
  Future<chopper.Response<String>> apiCompanyPost({required CompanyDTO? body}) {
    return _apiCompanyPost(body: body);
  }

  ///
  @Post(path: '/api/Company')
  Future<chopper.Response<String>> _apiCompanyPost(
      {@Body() required CompanyDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<CompanyDTOPagedResult>> apiCompanySearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(
        CompanyDTOPagedResult, () => CompanyDTOPagedResult.fromJsonFactory);

    return _apiCompanySearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/Company/Search')
  Future<chopper.Response<CompanyDTOPagedResult>> _apiCompanySearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<CompanyDTO>> apiCompanyIdGet({required String? id}) {
    generatedMapping.putIfAbsent(CompanyDTO, () => CompanyDTO.fromJsonFactory);

    return _apiCompanyIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Company/{id}')
  Future<chopper.Response<CompanyDTO>> _apiCompanyIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiCompanyIdPut(
      {required String? id, required CompanyDTO? body}) {
    return _apiCompanyIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Company/{id}')
  Future<chopper.Response<bool>> _apiCompanyIdPut(
      {@Path('id') required String? id, @Body() required CompanyDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiCompanyIdDelete({required String? id}) {
    return _apiCompanyIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Company/{id}')
  Future<chopper.Response<bool>> _apiCompanyIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<CostCenterDTO>>> apiCostCenterGet() {
    generatedMapping.putIfAbsent(
        CostCenterDTO, () => CostCenterDTO.fromJsonFactory);

    return _apiCostCenterGet();
  }

  ///
  @Get(path: '/api/CostCenter')
  Future<chopper.Response<List<CostCenterDTO>>> _apiCostCenterGet();

  ///
  Future<chopper.Response<String>> apiCostCenterPost(
      {required CostCenterDTO? body}) {
    return _apiCostCenterPost(body: body);
  }

  ///
  @Post(path: '/api/CostCenter')
  Future<chopper.Response<String>> _apiCostCenterPost(
      {@Body() required CostCenterDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<CostCenterDTOPagedResult>> apiCostCenterSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(CostCenterDTOPagedResult,
        () => CostCenterDTOPagedResult.fromJsonFactory);

    return _apiCostCenterSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/CostCenter/Search')
  Future<chopper.Response<CostCenterDTOPagedResult>> _apiCostCenterSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<CostCenterDTO>> apiCostCenterIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        CostCenterDTO, () => CostCenterDTO.fromJsonFactory);

    return _apiCostCenterIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/CostCenter/{id}')
  Future<chopper.Response<CostCenterDTO>> _apiCostCenterIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiCostCenterIdPut(
      {required String? id, required CostCenterDTO? body}) {
    return _apiCostCenterIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/CostCenter/{id}')
  Future<chopper.Response<bool>> _apiCostCenterIdPut(
      {@Path('id') required String? id, @Body() required CostCenterDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiCostCenterIdDelete({required String? id}) {
    return _apiCostCenterIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/CostCenter/{id}')
  Future<chopper.Response<bool>> _apiCostCenterIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<DocumentDTO>>> apiDocumentGet() {
    generatedMapping.putIfAbsent(
        DocumentDTO, () => DocumentDTO.fromJsonFactory);

    return _apiDocumentGet();
  }

  ///
  @Get(path: '/api/Document')
  Future<chopper.Response<List<DocumentDTO>>> _apiDocumentGet();

  ///
  Future<chopper.Response<String>> apiDocumentPost(
      {required DocumentDTO? body}) {
    return _apiDocumentPost(body: body);
  }

  ///
  @Post(path: '/api/Document')
  Future<chopper.Response<String>> _apiDocumentPost(
      {@Body() required DocumentDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<DocumentDTOPagedResult>> apiDocumentSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(
        DocumentDTOPagedResult, () => DocumentDTOPagedResult.fromJsonFactory);

    return _apiDocumentSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/Document/Search')
  Future<chopper.Response<DocumentDTOPagedResult>> _apiDocumentSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<DocumentDTO>> apiDocumentIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        DocumentDTO, () => DocumentDTO.fromJsonFactory);

    return _apiDocumentIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Document/{id}')
  Future<chopper.Response<DocumentDTO>> _apiDocumentIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiDocumentIdPut(
      {required String? id, required DocumentDTO? body}) {
    return _apiDocumentIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Document/{id}')
  Future<chopper.Response<bool>> _apiDocumentIdPut(
      {@Path('id') required String? id, @Body() required DocumentDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiDocumentIdDelete({required String? id}) {
    return _apiDocumentIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Document/{id}')
  Future<chopper.Response<bool>> _apiDocumentIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<EngineDTO>>> apiEngineGet() {
    generatedMapping.putIfAbsent(EngineDTO, () => EngineDTO.fromJsonFactory);

    return _apiEngineGet();
  }

  ///
  @Get(path: '/api/Engine')
  Future<chopper.Response<List<EngineDTO>>> _apiEngineGet();

  ///
  Future<chopper.Response<String>> apiEnginePost({required EngineDTO? body}) {
    return _apiEnginePost(body: body);
  }

  ///
  @Post(path: '/api/Engine')
  Future<chopper.Response<String>> _apiEnginePost(
      {@Body() required EngineDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<EngineDTOPagedResult>> apiEngineSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(
        EngineDTOPagedResult, () => EngineDTOPagedResult.fromJsonFactory);

    return _apiEngineSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/Engine/Search')
  Future<chopper.Response<EngineDTOPagedResult>> _apiEngineSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<EngineDTO>> apiEngineIdGet({required String? id}) {
    generatedMapping.putIfAbsent(EngineDTO, () => EngineDTO.fromJsonFactory);

    return _apiEngineIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Engine/{id}')
  Future<chopper.Response<EngineDTO>> _apiEngineIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiEngineIdPut(
      {required String? id, required EngineDTO? body}) {
    return _apiEngineIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Engine/{id}')
  Future<chopper.Response<bool>> _apiEngineIdPut(
      {@Path('id') required String? id, @Body() required EngineDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiEngineIdDelete({required String? id}) {
    return _apiEngineIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Engine/{id}')
  Future<chopper.Response<bool>> _apiEngineIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<FuelLoadDTO>>> apiFuelLoadGet() {
    generatedMapping.putIfAbsent(
        FuelLoadDTO, () => FuelLoadDTO.fromJsonFactory);

    return _apiFuelLoadGet();
  }

  ///
  @Get(path: '/api/FuelLoad')
  Future<chopper.Response<List<FuelLoadDTO>>> _apiFuelLoadGet();

  ///
  Future<chopper.Response<String>> apiFuelLoadPost(
      {required FuelLoadDTO? body}) {
    return _apiFuelLoadPost(body: body);
  }

  ///
  @Post(path: '/api/FuelLoad')
  Future<chopper.Response<String>> _apiFuelLoadPost(
      {@Body() required FuelLoadDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<FuelLoadDTOPagedResult>> apiFuelLoadSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(
        FuelLoadDTOPagedResult, () => FuelLoadDTOPagedResult.fromJsonFactory);

    return _apiFuelLoadSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/FuelLoad/Search')
  Future<chopper.Response<FuelLoadDTOPagedResult>> _apiFuelLoadSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<FuelLoadDTO>> apiFuelLoadIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        FuelLoadDTO, () => FuelLoadDTO.fromJsonFactory);

    return _apiFuelLoadIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/FuelLoad/{id}')
  Future<chopper.Response<FuelLoadDTO>> _apiFuelLoadIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiFuelLoadIdPut(
      {required String? id, required FuelLoadDTO? body}) {
    return _apiFuelLoadIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/FuelLoad/{id}')
  Future<chopper.Response<bool>> _apiFuelLoadIdPut(
      {@Path('id') required String? id, @Body() required FuelLoadDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiFuelLoadIdDelete({required String? id}) {
    return _apiFuelLoadIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/FuelLoad/{id}')
  Future<chopper.Response<bool>> _apiFuelLoadIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<FuelMeasureDTO>>> apiFuelMeasureGet() {
    generatedMapping.putIfAbsent(
        FuelMeasureDTO, () => FuelMeasureDTO.fromJsonFactory);

    return _apiFuelMeasureGet();
  }

  ///
  @Get(path: '/api/FuelMeasure')
  Future<chopper.Response<List<FuelMeasureDTO>>> _apiFuelMeasureGet();

  ///
  Future<chopper.Response<String>> apiFuelMeasurePost(
      {required FuelMeasureDTO? body}) {
    return _apiFuelMeasurePost(body: body);
  }

  ///
  @Post(path: '/api/FuelMeasure')
  Future<chopper.Response<String>> _apiFuelMeasurePost(
      {@Body() required FuelMeasureDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<FuelMeasureDTOPagedResult>> apiFuelMeasureSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(FuelMeasureDTOPagedResult,
        () => FuelMeasureDTOPagedResult.fromJsonFactory);

    return _apiFuelMeasureSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/FuelMeasure/Search')
  Future<chopper.Response<FuelMeasureDTOPagedResult>> _apiFuelMeasureSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<FuelMeasureDTO>> apiFuelMeasureIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        FuelMeasureDTO, () => FuelMeasureDTO.fromJsonFactory);

    return _apiFuelMeasureIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/FuelMeasure/{id}')
  Future<chopper.Response<FuelMeasureDTO>> _apiFuelMeasureIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiFuelMeasureIdPut(
      {required String? id, required FuelMeasureDTO? body}) {
    return _apiFuelMeasureIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/FuelMeasure/{id}')
  Future<chopper.Response<bool>> _apiFuelMeasureIdPut(
      {@Path('id') required String? id, @Body() required FuelMeasureDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiFuelMeasureIdDelete({required String? id}) {
    return _apiFuelMeasureIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/FuelMeasure/{id}')
  Future<chopper.Response<bool>> _apiFuelMeasureIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<FuelTypeDTO>>> apiFuelTypeGet() {
    generatedMapping.putIfAbsent(
        FuelTypeDTO, () => FuelTypeDTO.fromJsonFactory);

    return _apiFuelTypeGet();
  }

  ///
  @Get(path: '/api/FuelType')
  Future<chopper.Response<List<FuelTypeDTO>>> _apiFuelTypeGet();

  ///
  Future<chopper.Response<String>> apiFuelTypePost(
      {required FuelTypeDTO? body}) {
    return _apiFuelTypePost(body: body);
  }

  ///
  @Post(path: '/api/FuelType')
  Future<chopper.Response<String>> _apiFuelTypePost(
      {@Body() required FuelTypeDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<FuelTypeDTOPagedResult>> apiFuelTypeSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(
        FuelTypeDTOPagedResult, () => FuelTypeDTOPagedResult.fromJsonFactory);

    return _apiFuelTypeSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/FuelType/Search')
  Future<chopper.Response<FuelTypeDTOPagedResult>> _apiFuelTypeSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<FuelTypeDTO>> apiFuelTypeIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        FuelTypeDTO, () => FuelTypeDTO.fromJsonFactory);

    return _apiFuelTypeIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/FuelType/{id}')
  Future<chopper.Response<FuelTypeDTO>> _apiFuelTypeIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiFuelTypeIdPut(
      {required String? id, required FuelTypeDTO? body}) {
    return _apiFuelTypeIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/FuelType/{id}')
  Future<chopper.Response<bool>> _apiFuelTypeIdPut(
      {@Path('id') required String? id, @Body() required FuelTypeDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiFuelTypeIdDelete({required String? id}) {
    return _apiFuelTypeIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/FuelType/{id}')
  Future<chopper.Response<bool>> _apiFuelTypeIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<FuelVendorDTO>>> apiFuelVendorGet() {
    generatedMapping.putIfAbsent(
        FuelVendorDTO, () => FuelVendorDTO.fromJsonFactory);

    return _apiFuelVendorGet();
  }

  ///
  @Get(path: '/api/FuelVendor')
  Future<chopper.Response<List<FuelVendorDTO>>> _apiFuelVendorGet();

  ///
  Future<chopper.Response<String>> apiFuelVendorPost(
      {required FuelVendorDTO? body}) {
    return _apiFuelVendorPost(body: body);
  }

  ///
  @Post(path: '/api/FuelVendor')
  Future<chopper.Response<String>> _apiFuelVendorPost(
      {@Body() required FuelVendorDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<FuelVendorDTOPagedResult>> apiFuelVendorSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(FuelVendorDTOPagedResult,
        () => FuelVendorDTOPagedResult.fromJsonFactory);

    return _apiFuelVendorSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/FuelVendor/Search')
  Future<chopper.Response<FuelVendorDTOPagedResult>> _apiFuelVendorSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<FuelVendorDTO>> apiFuelVendorIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        FuelVendorDTO, () => FuelVendorDTO.fromJsonFactory);

    return _apiFuelVendorIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/FuelVendor/{id}')
  Future<chopper.Response<FuelVendorDTO>> _apiFuelVendorIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiFuelVendorIdPut(
      {required String? id, required FuelVendorDTO? body}) {
    return _apiFuelVendorIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/FuelVendor/{id}')
  Future<chopper.Response<bool>> _apiFuelVendorIdPut(
      {@Path('id') required String? id, @Body() required FuelVendorDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiFuelVendorIdDelete({required String? id}) {
    return _apiFuelVendorIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/FuelVendor/{id}')
  Future<chopper.Response<bool>> _apiFuelVendorIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<ImageDTO>>> apiImageGet() {
    generatedMapping.putIfAbsent(ImageDTO, () => ImageDTO.fromJsonFactory);

    return _apiImageGet();
  }

  ///
  @Get(path: '/api/Image')
  Future<chopper.Response<List<ImageDTO>>> _apiImageGet();

  ///
  Future<chopper.Response<String>> apiImagePost({required ImageDTO? body}) {
    return _apiImagePost(body: body);
  }

  ///
  @Post(path: '/api/Image')
  Future<chopper.Response<String>> _apiImagePost(
      {@Body() required ImageDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<ImageDTOPagedResult>> apiImageSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(
        ImageDTOPagedResult, () => ImageDTOPagedResult.fromJsonFactory);

    return _apiImageSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/Image/Search')
  Future<chopper.Response<ImageDTOPagedResult>> _apiImageSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<ImageDTO>> apiImageIdGet({required String? id}) {
    generatedMapping.putIfAbsent(ImageDTO, () => ImageDTO.fromJsonFactory);

    return _apiImageIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Image/{id}')
  Future<chopper.Response<ImageDTO>> _apiImageIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiImageIdPut(
      {required String? id, required ImageDTO? body}) {
    return _apiImageIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Image/{id}')
  Future<chopper.Response<bool>> _apiImageIdPut(
      {@Path('id') required String? id, @Body() required ImageDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiImageIdDelete({required String? id}) {
    return _apiImageIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Image/{id}')
  Future<chopper.Response<bool>> _apiImageIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<IncidentDTO>>> apiIncidentGet() {
    generatedMapping.putIfAbsent(
        IncidentDTO, () => IncidentDTO.fromJsonFactory);

    return _apiIncidentGet();
  }

  ///
  @Get(path: '/api/Incident')
  Future<chopper.Response<List<IncidentDTO>>> _apiIncidentGet();

  ///
  Future<chopper.Response<String>> apiIncidentPost(
      {required IncidentDTO? body}) {
    return _apiIncidentPost(body: body);
  }

  ///
  @Post(path: '/api/Incident')
  Future<chopper.Response<String>> _apiIncidentPost(
      {@Body() required IncidentDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<IncidentDTOPagedResult>> apiIncidentSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(
        IncidentDTOPagedResult, () => IncidentDTOPagedResult.fromJsonFactory);

    return _apiIncidentSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/Incident/Search')
  Future<chopper.Response<IncidentDTOPagedResult>> _apiIncidentSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<IncidentDTO>> apiIncidentIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        IncidentDTO, () => IncidentDTO.fromJsonFactory);

    return _apiIncidentIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Incident/{id}')
  Future<chopper.Response<IncidentDTO>> _apiIncidentIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiIncidentIdPut(
      {required String? id, required IncidentDTO? body}) {
    return _apiIncidentIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Incident/{id}')
  Future<chopper.Response<bool>> _apiIncidentIdPut(
      {@Path('id') required String? id, @Body() required IncidentDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiIncidentIdDelete({required String? id}) {
    return _apiIncidentIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Incident/{id}')
  Future<chopper.Response<bool>> _apiIncidentIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<IncisoDTO>>> apiIncisoGet() {
    generatedMapping.putIfAbsent(IncisoDTO, () => IncisoDTO.fromJsonFactory);

    return _apiIncisoGet();
  }

  ///
  @Get(path: '/api/Inciso')
  Future<chopper.Response<List<IncisoDTO>>> _apiIncisoGet();

  ///
  Future<chopper.Response<String>> apiIncisoPost({required IncisoDTO? body}) {
    return _apiIncisoPost(body: body);
  }

  ///
  @Post(path: '/api/Inciso')
  Future<chopper.Response<String>> _apiIncisoPost(
      {@Body() required IncisoDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<IncisoDTOPagedResult>> apiIncisoSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(
        IncisoDTOPagedResult, () => IncisoDTOPagedResult.fromJsonFactory);

    return _apiIncisoSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/Inciso/Search')
  Future<chopper.Response<IncisoDTOPagedResult>> _apiIncisoSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<IncisoDTO>> apiIncisoIdGet({required String? id}) {
    generatedMapping.putIfAbsent(IncisoDTO, () => IncisoDTO.fromJsonFactory);

    return _apiIncisoIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Inciso/{id}')
  Future<chopper.Response<IncisoDTO>> _apiIncisoIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiIncisoIdPut(
      {required String? id, required IncisoDTO? body}) {
    return _apiIncisoIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Inciso/{id}')
  Future<chopper.Response<bool>> _apiIncisoIdPut(
      {@Path('id') required String? id, @Body() required IncisoDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiIncisoIdDelete({required String? id}) {
    return _apiIncisoIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Inciso/{id}')
  Future<chopper.Response<bool>> _apiIncisoIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<InsuranceCompanyDTO>>> apiInsuranceCompanyGet() {
    generatedMapping.putIfAbsent(
        InsuranceCompanyDTO, () => InsuranceCompanyDTO.fromJsonFactory);

    return _apiInsuranceCompanyGet();
  }

  ///
  @Get(path: '/api/InsuranceCompany')
  Future<chopper.Response<List<InsuranceCompanyDTO>>> _apiInsuranceCompanyGet();

  ///
  Future<chopper.Response<String>> apiInsuranceCompanyPost(
      {required InsuranceCompanyDTO? body}) {
    return _apiInsuranceCompanyPost(body: body);
  }

  ///
  @Post(path: '/api/InsuranceCompany')
  Future<chopper.Response<String>> _apiInsuranceCompanyPost(
      {@Body() required InsuranceCompanyDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<InsuranceCompanyDTOPagedResult>>
      apiInsuranceCompanySearchGet(
          {required int? page,
          String? search,
          String? orderByPropertyName,
          enums.SortOrderEnum? sortOrder,
          required int? pageSize}) {
    generatedMapping.putIfAbsent(InsuranceCompanyDTOPagedResult,
        () => InsuranceCompanyDTOPagedResult.fromJsonFactory);

    return _apiInsuranceCompanySearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/InsuranceCompany/Search')
  Future<chopper.Response<InsuranceCompanyDTOPagedResult>>
      _apiInsuranceCompanySearchGet(
          {@Query('Page') required int? page,
          @Query('Search') String? search,
          @Query('OrderByPropertyName') String? orderByPropertyName,
          @Query('SortOrder') String? sortOrder,
          @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<InsuranceCompanyDTO>> apiInsuranceCompanyIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        InsuranceCompanyDTO, () => InsuranceCompanyDTO.fromJsonFactory);

    return _apiInsuranceCompanyIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/InsuranceCompany/{id}')
  Future<chopper.Response<InsuranceCompanyDTO>> _apiInsuranceCompanyIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiInsuranceCompanyIdPut(
      {required String? id, required InsuranceCompanyDTO? body}) {
    return _apiInsuranceCompanyIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/InsuranceCompany/{id}')
  Future<chopper.Response<bool>> _apiInsuranceCompanyIdPut(
      {@Path('id') required String? id,
      @Body() required InsuranceCompanyDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiInsuranceCompanyIdDelete(
      {required String? id}) {
    return _apiInsuranceCompanyIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/InsuranceCompany/{id}')
  Future<chopper.Response<bool>> _apiInsuranceCompanyIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<MachineDTO>>> apiMachineGet() {
    generatedMapping.putIfAbsent(MachineDTO, () => MachineDTO.fromJsonFactory);

    return _apiMachineGet();
  }

  ///
  @Get(path: '/api/Machine')
  Future<chopper.Response<List<MachineDTO>>> _apiMachineGet();

  ///
  Future<chopper.Response<String>> apiMachinePost({required MachineDTO? body}) {
    return _apiMachinePost(body: body);
  }

  ///
  @Post(path: '/api/Machine')
  Future<chopper.Response<String>> _apiMachinePost(
      {@Body() required MachineDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<MachineDTOPagedResult>> apiMachineSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(
        MachineDTOPagedResult, () => MachineDTOPagedResult.fromJsonFactory);

    return _apiMachineSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/Machine/Search')
  Future<chopper.Response<MachineDTOPagedResult>> _apiMachineSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<MachineDTO>> apiMachineIdGet({required String? id}) {
    generatedMapping.putIfAbsent(MachineDTO, () => MachineDTO.fromJsonFactory);

    return _apiMachineIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Machine/{id}')
  Future<chopper.Response<MachineDTO>> _apiMachineIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiMachineIdPut(
      {required String? id, required MachineDTO? body}) {
    return _apiMachineIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Machine/{id}')
  Future<chopper.Response<bool>> _apiMachineIdPut(
      {@Path('id') required String? id, @Body() required MachineDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiMachineIdDelete({required String? id}) {
    return _apiMachineIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Machine/{id}')
  Future<chopper.Response<bool>> _apiMachineIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<String>> apiMachineDrillRigProjectIdGet(
      {required String? id}) {
    return _apiMachineDrillRigProjectIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Machine/DrillRigProject/{id}')
  Future<chopper.Response<String>> _apiMachineDrillRigProjectIdGet(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<MaintenanceDTO>>> apiMaintenanceGet() {
    generatedMapping.putIfAbsent(
        MaintenanceDTO, () => MaintenanceDTO.fromJsonFactory);

    return _apiMaintenanceGet();
  }

  ///
  @Get(path: '/api/Maintenance')
  Future<chopper.Response<List<MaintenanceDTO>>> _apiMaintenanceGet();

  ///
  Future<chopper.Response<String>> apiMaintenancePost(
      {required MaintenanceDTO? body}) {
    return _apiMaintenancePost(body: body);
  }

  ///
  @Post(path: '/api/Maintenance')
  Future<chopper.Response<String>> _apiMaintenancePost(
      {@Body() required MaintenanceDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<MaintenanceDTOPagedResult>> apiMaintenanceSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(MaintenanceDTOPagedResult,
        () => MaintenanceDTOPagedResult.fromJsonFactory);

    return _apiMaintenanceSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/Maintenance/Search')
  Future<chopper.Response<MaintenanceDTOPagedResult>> _apiMaintenanceSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<MaintenanceDTO>> apiMaintenanceIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        MaintenanceDTO, () => MaintenanceDTO.fromJsonFactory);

    return _apiMaintenanceIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Maintenance/{id}')
  Future<chopper.Response<MaintenanceDTO>> _apiMaintenanceIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiMaintenanceIdPut(
      {required String? id, required MaintenanceDTO? body}) {
    return _apiMaintenanceIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Maintenance/{id}')
  Future<chopper.Response<bool>> _apiMaintenanceIdPut(
      {@Path('id') required String? id, @Body() required MaintenanceDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiMaintenanceIdDelete({required String? id}) {
    return _apiMaintenanceIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Maintenance/{id}')
  Future<chopper.Response<bool>> _apiMaintenanceIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<MaintenanceGroupDTO>>> apiMaintenanceGroupGet() {
    generatedMapping.putIfAbsent(
        MaintenanceGroupDTO, () => MaintenanceGroupDTO.fromJsonFactory);

    return _apiMaintenanceGroupGet();
  }

  ///
  @Get(path: '/api/MaintenanceGroup')
  Future<chopper.Response<List<MaintenanceGroupDTO>>> _apiMaintenanceGroupGet();

  ///
  Future<chopper.Response<String>> apiMaintenanceGroupPost(
      {required MaintenanceGroupDTO? body}) {
    return _apiMaintenanceGroupPost(body: body);
  }

  ///
  @Post(path: '/api/MaintenanceGroup')
  Future<chopper.Response<String>> _apiMaintenanceGroupPost(
      {@Body() required MaintenanceGroupDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<MaintenanceGroupDTOPagedResult>>
      apiMaintenanceGroupSearchGet(
          {required int? page,
          String? search,
          String? orderByPropertyName,
          enums.SortOrderEnum? sortOrder,
          required int? pageSize}) {
    generatedMapping.putIfAbsent(MaintenanceGroupDTOPagedResult,
        () => MaintenanceGroupDTOPagedResult.fromJsonFactory);

    return _apiMaintenanceGroupSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/MaintenanceGroup/Search')
  Future<chopper.Response<MaintenanceGroupDTOPagedResult>>
      _apiMaintenanceGroupSearchGet(
          {@Query('Page') required int? page,
          @Query('Search') String? search,
          @Query('OrderByPropertyName') String? orderByPropertyName,
          @Query('SortOrder') String? sortOrder,
          @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<MaintenanceGroupDTO>> apiMaintenanceGroupIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        MaintenanceGroupDTO, () => MaintenanceGroupDTO.fromJsonFactory);

    return _apiMaintenanceGroupIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/MaintenanceGroup/{id}')
  Future<chopper.Response<MaintenanceGroupDTO>> _apiMaintenanceGroupIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiMaintenanceGroupIdPut(
      {required String? id, required MaintenanceGroupDTO? body}) {
    return _apiMaintenanceGroupIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/MaintenanceGroup/{id}')
  Future<chopper.Response<bool>> _apiMaintenanceGroupIdPut(
      {@Path('id') required String? id,
      @Body() required MaintenanceGroupDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiMaintenanceGroupIdDelete(
      {required String? id}) {
    return _apiMaintenanceGroupIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/MaintenanceGroup/{id}')
  Future<chopper.Response<bool>> _apiMaintenanceGroupIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<MaintenancePartDTO>>> apiMaintenancePartGet() {
    generatedMapping.putIfAbsent(
        MaintenancePartDTO, () => MaintenancePartDTO.fromJsonFactory);

    return _apiMaintenancePartGet();
  }

  ///
  @Get(path: '/api/MaintenancePart')
  Future<chopper.Response<List<MaintenancePartDTO>>> _apiMaintenancePartGet();

  ///
  Future<chopper.Response<String>> apiMaintenancePartPost(
      {required MaintenancePartDTO? body}) {
    return _apiMaintenancePartPost(body: body);
  }

  ///
  @Post(path: '/api/MaintenancePart')
  Future<chopper.Response<String>> _apiMaintenancePartPost(
      {@Body() required MaintenancePartDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<MaintenancePartDTOPagedResult>>
      apiMaintenancePartSearchGet(
          {required int? page,
          String? search,
          String? orderByPropertyName,
          enums.SortOrderEnum? sortOrder,
          required int? pageSize}) {
    generatedMapping.putIfAbsent(MaintenancePartDTOPagedResult,
        () => MaintenancePartDTOPagedResult.fromJsonFactory);

    return _apiMaintenancePartSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/MaintenancePart/Search')
  Future<chopper.Response<MaintenancePartDTOPagedResult>>
      _apiMaintenancePartSearchGet(
          {@Query('Page') required int? page,
          @Query('Search') String? search,
          @Query('OrderByPropertyName') String? orderByPropertyName,
          @Query('SortOrder') String? sortOrder,
          @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<MaintenancePartDTO>> apiMaintenancePartIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        MaintenancePartDTO, () => MaintenancePartDTO.fromJsonFactory);

    return _apiMaintenancePartIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/MaintenancePart/{id}')
  Future<chopper.Response<MaintenancePartDTO>> _apiMaintenancePartIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiMaintenancePartIdPut(
      {required String? id, required MaintenancePartDTO? body}) {
    return _apiMaintenancePartIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/MaintenancePart/{id}')
  Future<chopper.Response<bool>> _apiMaintenancePartIdPut(
      {@Path('id') required String? id,
      @Body() required MaintenancePartDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiMaintenancePartIdDelete(
      {required String? id}) {
    return _apiMaintenancePartIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/MaintenancePart/{id}')
  Future<chopper.Response<bool>> _apiMaintenancePartIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<MaintenanceTypeDTO>>> apiMaintenanceTypeGet() {
    generatedMapping.putIfAbsent(
        MaintenanceTypeDTO, () => MaintenanceTypeDTO.fromJsonFactory);

    return _apiMaintenanceTypeGet();
  }

  ///
  @Get(path: '/api/MaintenanceType')
  Future<chopper.Response<List<MaintenanceTypeDTO>>> _apiMaintenanceTypeGet();

  ///
  Future<chopper.Response<String>> apiMaintenanceTypePost(
      {required MaintenanceTypeDTO? body}) {
    return _apiMaintenanceTypePost(body: body);
  }

  ///
  @Post(path: '/api/MaintenanceType')
  Future<chopper.Response<String>> _apiMaintenanceTypePost(
      {@Body() required MaintenanceTypeDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<MaintenanceTypeDTOPagedResult>>
      apiMaintenanceTypeSearchGet(
          {required int? page,
          String? search,
          String? orderByPropertyName,
          enums.SortOrderEnum? sortOrder,
          required int? pageSize}) {
    generatedMapping.putIfAbsent(MaintenanceTypeDTOPagedResult,
        () => MaintenanceTypeDTOPagedResult.fromJsonFactory);

    return _apiMaintenanceTypeSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/MaintenanceType/Search')
  Future<chopper.Response<MaintenanceTypeDTOPagedResult>>
      _apiMaintenanceTypeSearchGet(
          {@Query('Page') required int? page,
          @Query('Search') String? search,
          @Query('OrderByPropertyName') String? orderByPropertyName,
          @Query('SortOrder') String? sortOrder,
          @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<MaintenanceTypeDTO>> apiMaintenanceTypeIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        MaintenanceTypeDTO, () => MaintenanceTypeDTO.fromJsonFactory);

    return _apiMaintenanceTypeIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/MaintenanceType/{id}')
  Future<chopper.Response<MaintenanceTypeDTO>> _apiMaintenanceTypeIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiMaintenanceTypeIdPut(
      {required String? id, required MaintenanceTypeDTO? body}) {
    return _apiMaintenanceTypeIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/MaintenanceType/{id}')
  Future<chopper.Response<bool>> _apiMaintenanceTypeIdPut(
      {@Path('id') required String? id,
      @Body() required MaintenanceTypeDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiMaintenanceTypeIdDelete(
      {required String? id}) {
    return _apiMaintenanceTypeIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/MaintenanceType/{id}')
  Future<chopper.Response<bool>> _apiMaintenanceTypeIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<MeasureDTO>>> apiMeasureGet() {
    generatedMapping.putIfAbsent(MeasureDTO, () => MeasureDTO.fromJsonFactory);

    return _apiMeasureGet();
  }

  ///
  @Get(path: '/api/Measure')
  Future<chopper.Response<List<MeasureDTO>>> _apiMeasureGet();

  ///
  Future<chopper.Response<String>> apiMeasurePost({required MeasureDTO? body}) {
    return _apiMeasurePost(body: body);
  }

  ///
  @Post(path: '/api/Measure')
  Future<chopper.Response<String>> _apiMeasurePost(
      {@Body() required MeasureDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<MeasureDTOPagedResult>> apiMeasureSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(
        MeasureDTOPagedResult, () => MeasureDTOPagedResult.fromJsonFactory);

    return _apiMeasureSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/Measure/Search')
  Future<chopper.Response<MeasureDTOPagedResult>> _apiMeasureSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<MeasureDTO>> apiMeasureIdGet({required String? id}) {
    generatedMapping.putIfAbsent(MeasureDTO, () => MeasureDTO.fromJsonFactory);

    return _apiMeasureIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Measure/{id}')
  Future<chopper.Response<MeasureDTO>> _apiMeasureIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiMeasureIdPut(
      {required String? id, required MeasureDTO? body}) {
    return _apiMeasureIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Measure/{id}')
  Future<chopper.Response<bool>> _apiMeasureIdPut(
      {@Path('id') required String? id, @Body() required MeasureDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiMeasureIdDelete({required String? id}) {
    return _apiMeasureIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Measure/{id}')
  Future<chopper.Response<bool>> _apiMeasureIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<ModelDTO>>> apiModelGet() {
    generatedMapping.putIfAbsent(ModelDTO, () => ModelDTO.fromJsonFactory);

    return _apiModelGet();
  }

  ///
  @Get(path: '/api/Model')
  Future<chopper.Response<List<ModelDTO>>> _apiModelGet();

  ///
  Future<chopper.Response<String>> apiModelPost({required ModelDTO? body}) {
    return _apiModelPost(body: body);
  }

  ///
  @Post(path: '/api/Model')
  Future<chopper.Response<String>> _apiModelPost(
      {@Body() required ModelDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<ModelDTOPagedResult>> apiModelSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(
        ModelDTOPagedResult, () => ModelDTOPagedResult.fromJsonFactory);

    return _apiModelSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/Model/Search')
  Future<chopper.Response<ModelDTOPagedResult>> _apiModelSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<ModelDTO>> apiModelIdGet({required String? id}) {
    generatedMapping.putIfAbsent(ModelDTO, () => ModelDTO.fromJsonFactory);

    return _apiModelIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Model/{id}')
  Future<chopper.Response<ModelDTO>> _apiModelIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiModelIdPut(
      {required String? id, required ModelDTO? body}) {
    return _apiModelIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Model/{id}')
  Future<chopper.Response<bool>> _apiModelIdPut(
      {@Path('id') required String? id, @Body() required ModelDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiModelIdDelete({required String? id}) {
    return _apiModelIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Model/{id}')
  Future<chopper.Response<bool>> _apiModelIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<PackagePolicyDTO>>> apiPackagePolicyGet() {
    generatedMapping.putIfAbsent(
        PackagePolicyDTO, () => PackagePolicyDTO.fromJsonFactory);

    return _apiPackagePolicyGet();
  }

  ///
  @Get(path: '/api/PackagePolicy')
  Future<chopper.Response<List<PackagePolicyDTO>>> _apiPackagePolicyGet();

  ///
  Future<chopper.Response<String>> apiPackagePolicyPost(
      {required PackagePolicyDTO? body}) {
    return _apiPackagePolicyPost(body: body);
  }

  ///
  @Post(path: '/api/PackagePolicy')
  Future<chopper.Response<String>> _apiPackagePolicyPost(
      {@Body() required PackagePolicyDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<PackagePolicyDTOPagedResult>>
      apiPackagePolicySearchGet(
          {required int? page,
          String? search,
          String? orderByPropertyName,
          enums.SortOrderEnum? sortOrder,
          required int? pageSize}) {
    generatedMapping.putIfAbsent(PackagePolicyDTOPagedResult,
        () => PackagePolicyDTOPagedResult.fromJsonFactory);

    return _apiPackagePolicySearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/PackagePolicy/Search')
  Future<chopper.Response<PackagePolicyDTOPagedResult>>
      _apiPackagePolicySearchGet(
          {@Query('Page') required int? page,
          @Query('Search') String? search,
          @Query('OrderByPropertyName') String? orderByPropertyName,
          @Query('SortOrder') String? sortOrder,
          @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<PackagePolicyDTO>> apiPackagePolicyIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        PackagePolicyDTO, () => PackagePolicyDTO.fromJsonFactory);

    return _apiPackagePolicyIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/PackagePolicy/{id}')
  Future<chopper.Response<PackagePolicyDTO>> _apiPackagePolicyIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiPackagePolicyIdPut(
      {required String? id, required PackagePolicyDTO? body}) {
    return _apiPackagePolicyIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/PackagePolicy/{id}')
  Future<chopper.Response<bool>> _apiPackagePolicyIdPut(
      {@Path('id') required String? id,
      @Body() required PackagePolicyDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiPackagePolicyIdDelete(
      {required String? id}) {
    return _apiPackagePolicyIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/PackagePolicy/{id}')
  Future<chopper.Response<bool>> _apiPackagePolicyIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<PartDTO>>> apiPartGet() {
    generatedMapping.putIfAbsent(PartDTO, () => PartDTO.fromJsonFactory);

    return _apiPartGet();
  }

  ///
  @Get(path: '/api/Part')
  Future<chopper.Response<List<PartDTO>>> _apiPartGet();

  ///
  Future<chopper.Response<String>> apiPartPost({required PartDTO? body}) {
    return _apiPartPost(body: body);
  }

  ///
  @Post(path: '/api/Part')
  Future<chopper.Response<String>> _apiPartPost(
      {@Body() required PartDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<PartDTOPagedResult>> apiPartSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(
        PartDTOPagedResult, () => PartDTOPagedResult.fromJsonFactory);

    return _apiPartSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/Part/Search')
  Future<chopper.Response<PartDTOPagedResult>> _apiPartSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<PartDTO>> apiPartIdGet({required String? id}) {
    generatedMapping.putIfAbsent(PartDTO, () => PartDTO.fromJsonFactory);

    return _apiPartIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Part/{id}')
  Future<chopper.Response<PartDTO>> _apiPartIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiPartIdPut(
      {required String? id, required PartDTO? body}) {
    return _apiPartIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Part/{id}')
  Future<chopper.Response<bool>> _apiPartIdPut(
      {@Path('id') required String? id, @Body() required PartDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiPartIdDelete({required String? id}) {
    return _apiPartIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Part/{id}')
  Future<chopper.Response<bool>> _apiPartIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<PolicyDTO>>> apiPolicyGet() {
    generatedMapping.putIfAbsent(PolicyDTO, () => PolicyDTO.fromJsonFactory);

    return _apiPolicyGet();
  }

  ///
  @Get(path: '/api/Policy')
  Future<chopper.Response<List<PolicyDTO>>> _apiPolicyGet();

  ///
  Future<chopper.Response<String>> apiPolicyPost({required PolicyDTO? body}) {
    return _apiPolicyPost(body: body);
  }

  ///
  @Post(path: '/api/Policy')
  Future<chopper.Response<String>> _apiPolicyPost(
      {@Body() required PolicyDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<PolicyDTOPagedResult>> apiPolicySearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(
        PolicyDTOPagedResult, () => PolicyDTOPagedResult.fromJsonFactory);

    return _apiPolicySearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/Policy/Search')
  Future<chopper.Response<PolicyDTOPagedResult>> _apiPolicySearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<PolicyDTO>> apiPolicyIdGet({required String? id}) {
    generatedMapping.putIfAbsent(PolicyDTO, () => PolicyDTO.fromJsonFactory);

    return _apiPolicyIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Policy/{id}')
  Future<chopper.Response<PolicyDTO>> _apiPolicyIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiPolicyIdPut(
      {required String? id, required PolicyDTO? body}) {
    return _apiPolicyIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Policy/{id}')
  Future<chopper.Response<bool>> _apiPolicyIdPut(
      {@Path('id') required String? id, @Body() required PolicyDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiPolicyIdDelete({required String? id}) {
    return _apiPolicyIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Policy/{id}')
  Future<chopper.Response<bool>> _apiPolicyIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<PolicyStatusDTO>>> apiPolicyStatusGet() {
    generatedMapping.putIfAbsent(
        PolicyStatusDTO, () => PolicyStatusDTO.fromJsonFactory);

    return _apiPolicyStatusGet();
  }

  ///
  @Get(path: '/api/PolicyStatus')
  Future<chopper.Response<List<PolicyStatusDTO>>> _apiPolicyStatusGet();

  ///
  Future<chopper.Response<String>> apiPolicyStatusPost(
      {required PolicyStatusDTO? body}) {
    return _apiPolicyStatusPost(body: body);
  }

  ///
  @Post(path: '/api/PolicyStatus')
  Future<chopper.Response<String>> _apiPolicyStatusPost(
      {@Body() required PolicyStatusDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<PolicyStatusDTOPagedResult>> apiPolicyStatusSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(PolicyStatusDTOPagedResult,
        () => PolicyStatusDTOPagedResult.fromJsonFactory);

    return _apiPolicyStatusSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/PolicyStatus/Search')
  Future<chopper.Response<PolicyStatusDTOPagedResult>>
      _apiPolicyStatusSearchGet(
          {@Query('Page') required int? page,
          @Query('Search') String? search,
          @Query('OrderByPropertyName') String? orderByPropertyName,
          @Query('SortOrder') String? sortOrder,
          @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<PolicyStatusDTO>> apiPolicyStatusIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        PolicyStatusDTO, () => PolicyStatusDTO.fromJsonFactory);

    return _apiPolicyStatusIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/PolicyStatus/{id}')
  Future<chopper.Response<PolicyStatusDTO>> _apiPolicyStatusIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiPolicyStatusIdPut(
      {required String? id, required PolicyStatusDTO? body}) {
    return _apiPolicyStatusIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/PolicyStatus/{id}')
  Future<chopper.Response<bool>> _apiPolicyStatusIdPut(
      {@Path('id') required String? id,
      @Body() required PolicyStatusDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiPolicyStatusIdDelete(
      {required String? id}) {
    return _apiPolicyStatusIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/PolicyStatus/{id}')
  Future<chopper.Response<bool>> _apiPolicyStatusIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<ProjectDTO>>> apiProjectGet() {
    generatedMapping.putIfAbsent(ProjectDTO, () => ProjectDTO.fromJsonFactory);

    return _apiProjectGet();
  }

  ///
  @Get(path: '/api/Project')
  Future<chopper.Response<List<ProjectDTO>>> _apiProjectGet();

  ///
  Future<chopper.Response<String>> apiProjectPost({required ProjectDTO? body}) {
    return _apiProjectPost(body: body);
  }

  ///
  @Post(path: '/api/Project')
  Future<chopper.Response<String>> _apiProjectPost(
      {@Body() required ProjectDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<ProjectDTOPagedResult>> apiProjectSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(
        ProjectDTOPagedResult, () => ProjectDTOPagedResult.fromJsonFactory);

    return _apiProjectSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/Project/Search')
  Future<chopper.Response<ProjectDTOPagedResult>> _apiProjectSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<ProjectDTO>> apiProjectIdGet({required String? id}) {
    generatedMapping.putIfAbsent(ProjectDTO, () => ProjectDTO.fromJsonFactory);

    return _apiProjectIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Project/{id}')
  Future<chopper.Response<ProjectDTO>> _apiProjectIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiProjectIdPut(
      {required String? id, required ProjectDTO? body}) {
    return _apiProjectIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Project/{id}')
  Future<chopper.Response<bool>> _apiProjectIdPut(
      {@Path('id') required String? id, @Body() required ProjectDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiProjectIdDelete({required String? id}) {
    return _apiProjectIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Project/{id}')
  Future<chopper.Response<bool>> _apiProjectIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<ReminderPostDTO>>> apiReminderGet() {
    generatedMapping.putIfAbsent(
        ReminderPostDTO, () => ReminderPostDTO.fromJsonFactory);

    return _apiReminderGet();
  }

  ///
  @Get(path: '/api/Reminder')
  Future<chopper.Response<List<ReminderPostDTO>>> _apiReminderGet();

  ///
  Future<chopper.Response<String>> apiReminderPost(
      {required ReminderPostDTO? body}) {
    return _apiReminderPost(body: body);
  }

  ///
  @Post(path: '/api/Reminder')
  Future<chopper.Response<String>> _apiReminderPost(
      {@Body() required ReminderPostDTO? body});

  ///
  ///@param Id
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<ReminderDTOPagedResult>> apiReminderSearchGet(
      {String? id,
      required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(
        ReminderDTOPagedResult, () => ReminderDTOPagedResult.fromJsonFactory);

    return _apiReminderSearchGet(
        id: id,
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Id
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/Reminder/Search')
  Future<chopper.Response<ReminderDTOPagedResult>> _apiReminderSearchGet(
      {@Query('Id') String? id,
      @Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<ReminderPostDTO>> apiReminderIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        ReminderPostDTO, () => ReminderPostDTO.fromJsonFactory);

    return _apiReminderIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Reminder/{id}')
  Future<chopper.Response<ReminderPostDTO>> _apiReminderIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiReminderIdPut(
      {required String? id, required ReminderPostDTO? body}) {
    return _apiReminderIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Reminder/{id}')
  Future<chopper.Response<bool>> _apiReminderIdPut(
      {@Path('id') required String? id,
      @Body() required ReminderPostDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiReminderIdDelete({required String? id}) {
    return _apiReminderIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Reminder/{id}')
  Future<chopper.Response<bool>> _apiReminderIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<RoleDTO>>> apiRoleGet() {
    generatedMapping.putIfAbsent(RoleDTO, () => RoleDTO.fromJsonFactory);

    return _apiRoleGet();
  }

  ///
  @Get(path: '/api/Role')
  Future<chopper.Response<List<RoleDTO>>> _apiRoleGet();

  ///
  Future<chopper.Response<String>> apiRolePost({required RoleDTO? body}) {
    return _apiRolePost(body: body);
  }

  ///
  @Post(path: '/api/Role')
  Future<chopper.Response<String>> _apiRolePost(
      {@Body() required RoleDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<RoleDTOPagedResult>> apiRoleSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(
        RoleDTOPagedResult, () => RoleDTOPagedResult.fromJsonFactory);

    return _apiRoleSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/Role/Search')
  Future<chopper.Response<RoleDTOPagedResult>> _apiRoleSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<RoleDTO>> apiRoleIdGet({required String? id}) {
    generatedMapping.putIfAbsent(RoleDTO, () => RoleDTO.fromJsonFactory);

    return _apiRoleIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Role/{id}')
  Future<chopper.Response<RoleDTO>> _apiRoleIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiRoleIdPut(
      {required String? id, required RoleDTO? body}) {
    return _apiRoleIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Role/{id}')
  Future<chopper.Response<bool>> _apiRoleIdPut(
      {@Path('id') required String? id, @Body() required RoleDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiRoleIdDelete({required String? id}) {
    return _apiRoleIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Role/{id}')
  Future<chopper.Response<bool>> _apiRoleIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<ServiceDTO>>> apiServiceGet() {
    generatedMapping.putIfAbsent(ServiceDTO, () => ServiceDTO.fromJsonFactory);

    return _apiServiceGet();
  }

  ///
  @Get(path: '/api/Service')
  Future<chopper.Response<List<ServiceDTO>>> _apiServiceGet();

  ///
  Future<chopper.Response<String>> apiServicePost({required ServiceDTO? body}) {
    return _apiServicePost(body: body);
  }

  ///
  @Post(path: '/api/Service')
  Future<chopper.Response<String>> _apiServicePost(
      {@Body() required ServiceDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<ServiceDTOPagedResult>> apiServiceSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(
        ServiceDTOPagedResult, () => ServiceDTOPagedResult.fromJsonFactory);

    return _apiServiceSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/Service/Search')
  Future<chopper.Response<ServiceDTOPagedResult>> _apiServiceSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<ServiceDTO>> apiServiceIdGet({required String? id}) {
    generatedMapping.putIfAbsent(ServiceDTO, () => ServiceDTO.fromJsonFactory);

    return _apiServiceIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Service/{id}')
  Future<chopper.Response<ServiceDTO>> _apiServiceIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiServiceIdPut(
      {required String? id, required ServiceDTO? body}) {
    return _apiServiceIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Service/{id}')
  Future<chopper.Response<bool>> _apiServiceIdPut(
      {@Path('id') required String? id, @Body() required ServiceDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiServiceIdDelete({required String? id}) {
    return _apiServiceIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Service/{id}')
  Future<chopper.Response<bool>> _apiServiceIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<AppUserDTO>>> apiUserGet() {
    generatedMapping.putIfAbsent(AppUserDTO, () => AppUserDTO.fromJsonFactory);

    return _apiUserGet();
  }

  ///
  @Get(path: '/api/User')
  Future<chopper.Response<List<AppUserDTO>>> _apiUserGet();

  ///Endpoint para el registro de los usuarios
  Future<chopper.Response<String>> apiUserPost({required UserPostDTO? body}) {
    return _apiUserPost(body: body);
  }

  ///Endpoint para el registro de los usuarios
  @Post(path: '/api/User')
  Future<chopper.Response<String>> _apiUserPost(
      {@Body() required UserPostDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<AppUserDTOPagedResult>> apiUserSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(
        AppUserDTOPagedResult, () => AppUserDTOPagedResult.fromJsonFactory);

    return _apiUserSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/User/Search')
  Future<chopper.Response<AppUserDTOPagedResult>> _apiUserSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<AppUserDTO>> apiUserIdGet({required String? id}) {
    generatedMapping.putIfAbsent(AppUserDTO, () => AppUserDTO.fromJsonFactory);

    return _apiUserIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/User/{id}')
  Future<chopper.Response<AppUserDTO>> _apiUserIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<EditUserResponse>> apiUserIdPut(
      {required String? id, required ApiUserIdPut$RequestBody? body}) {
    generatedMapping.putIfAbsent(
        EditUserResponse, () => EditUserResponse.fromJsonFactory);

    return _apiUserIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/User/{id}')
  Future<chopper.Response<EditUserResponse>> _apiUserIdPut(
      {@Path('id') required String? id,
      @Body() required ApiUserIdPut$RequestBody? body});

  ///
  ///@param id
  Future<chopper.Response<EditUserResponse>> apiUserEditUserAppIdPut(
      {required String? id, required UserPutDTO? body}) {
    generatedMapping.putIfAbsent(
        EditUserResponse, () => EditUserResponse.fromJsonFactory);

    return _apiUserEditUserAppIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/User/EditUserApp/{id}')
  Future<chopper.Response<EditUserResponse>> _apiUserEditUserAppIdPut(
      {@Path('id') required String? id, @Body() required UserPutDTO? body});

  ///
  ///@param id
  Future<chopper.Response<EditUserResponse>> apiUserUploadImageIdPost(
      {required String? id,
      required ApiUserUploadImageIdPost$RequestBody? body}) {
    generatedMapping.putIfAbsent(
        EditUserResponse, () => EditUserResponse.fromJsonFactory);

    return _apiUserUploadImageIdPost(id: id, body: body);
  }

  ///
  ///@param id
  @Post(path: '/api/User/UploadImage/{id}')
  Future<chopper.Response<EditUserResponse>> _apiUserUploadImageIdPost(
      {@Path('id') required String? id,
      @Body() required ApiUserUploadImageIdPost$RequestBody? body});

  ///
  Future<chopper.Response<List<UserVehicleDTO>>> apiUserVehicleGet() {
    generatedMapping.putIfAbsent(
        UserVehicleDTO, () => UserVehicleDTO.fromJsonFactory);

    return _apiUserVehicleGet();
  }

  ///
  @Get(path: '/api/UserVehicle')
  Future<chopper.Response<List<UserVehicleDTO>>> _apiUserVehicleGet();

  ///
  Future<chopper.Response<String>> apiUserVehiclePost(
      {required UserVehicleDTO? body}) {
    return _apiUserVehiclePost(body: body);
  }

  ///
  @Post(path: '/api/UserVehicle')
  Future<chopper.Response<String>> _apiUserVehiclePost(
      {@Body() required UserVehicleDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<UserVehicleDTOPagedResult>> apiUserVehicleSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(UserVehicleDTOPagedResult,
        () => UserVehicleDTOPagedResult.fromJsonFactory);

    return _apiUserVehicleSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/UserVehicle/Search')
  Future<chopper.Response<UserVehicleDTOPagedResult>> _apiUserVehicleSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<UserVehicleDTO>> apiUserVehicleIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        UserVehicleDTO, () => UserVehicleDTO.fromJsonFactory);

    return _apiUserVehicleIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/UserVehicle/{id}')
  Future<chopper.Response<UserVehicleDTO>> _apiUserVehicleIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiUserVehicleIdPut(
      {required String? id, required UserVehicleDTO? body}) {
    return _apiUserVehicleIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/UserVehicle/{id}')
  Future<chopper.Response<bool>> _apiUserVehicleIdPut(
      {@Path('id') required String? id, @Body() required UserVehicleDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiUserVehicleIdDelete({required String? id}) {
    return _apiUserVehicleIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/UserVehicle/{id}')
  Future<chopper.Response<bool>> _apiUserVehicleIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<VehicleDTO>>> apiVehicleGet() {
    generatedMapping.putIfAbsent(VehicleDTO, () => VehicleDTO.fromJsonFactory);

    return _apiVehicleGet();
  }

  ///
  @Get(path: '/api/Vehicle')
  Future<chopper.Response<List<VehicleDTO>>> _apiVehicleGet();

  ///
  Future<chopper.Response<String>> apiVehiclePost(
      {required List<int> partFile}) {
    return _apiVehiclePost(partFile: partFile);
  }

  ///
  @Post(path: '/api/Vehicle')
  @Multipart()
  Future<chopper.Response<String>> _apiVehiclePost(
      {@PartFile() required List<int> partFile});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<VehicleDTOPagedResult>> apiVehicleSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(
        VehicleDTOPagedResult, () => VehicleDTOPagedResult.fromJsonFactory);

    return _apiVehicleSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/Vehicle/Search')
  Future<chopper.Response<VehicleDTOPagedResult>> _apiVehicleSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  ///@param active
  Future<chopper.Response<VehicleInboxDTOPagedResult>> apiVehicleInboxGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize,
      bool? active}) {
    generatedMapping.putIfAbsent(VehicleInboxDTOPagedResult,
        () => VehicleInboxDTOPagedResult.fromJsonFactory);

    return _apiVehicleInboxGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize,
        active: active);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  ///@param active
  @Get(path: '/api/Vehicle/Inbox')
  Future<chopper.Response<VehicleInboxDTOPagedResult>> _apiVehicleInboxGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize,
      @Query('active') bool? active});

  ///
  Future<chopper.Response<String>> apiVehicleSavePost(
      {required VehiclePostDTO? body}) {
    return _apiVehicleSavePost(body: body);
  }

  ///
  @Post(path: '/api/Vehicle/Save')
  Future<chopper.Response<String>> _apiVehicleSavePost(
      {@Body() required VehiclePostDTO? body});

  ///
  ///@param id
  Future<chopper.Response<VehicleDetailDTO>> apiVehicleIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        VehicleDetailDTO, () => VehicleDetailDTO.fromJsonFactory);

    return _apiVehicleIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Vehicle/{id}')
  Future<chopper.Response<VehicleDetailDTO>> _apiVehicleIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  ///@param PhotosToRemove
  ///@param VIN
  ///@param MachineId
  ///@param Description
  ///@param EconomicNumber
  ///@param AssignedId
  ///@param BrandId
  ///@param ModelId
  ///@param ModelYear
  ///@param EngineId
  ///@param Placas
  ///@param DrillRigId
  ///@param PolicyId
  ///@param IncisoId
  ///@param PackagePolicyId
  ///@param MeasureId
  ///@param FuelMeasureId
  ///@param FuelTypeId
  ///@param CompanyId
  ///@param CategoryId
  ///@param TankSize
  ///@param Active
  Future<chopper.Response<bool>> apiVehicleIdPut(
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
    return _apiVehicleIdPut(
        id: id,
        photosToRemove: photosToRemove,
        vin: vin,
        machineId: machineId,
        description: description,
        economicNumber: economicNumber,
        assignedId: assignedId,
        brandId: brandId,
        modelId: modelId,
        modelYear: modelYear,
        engineId: engineId,
        placas: placas,
        drillRigId: drillRigId,
        policyId: policyId,
        incisoId: incisoId,
        packagePolicyId: packagePolicyId,
        measureId: measureId,
        fuelMeasureId: fuelMeasureId,
        fuelTypeId: fuelTypeId,
        companyId: companyId,
        categoryId: categoryId,
        tankSize: tankSize,
        active: active,
        partFile: partFile);
  }

  ///
  ///@param id
  ///@param PhotosToRemove
  ///@param VIN
  ///@param MachineId
  ///@param Description
  ///@param EconomicNumber
  ///@param AssignedId
  ///@param BrandId
  ///@param ModelId
  ///@param ModelYear
  ///@param EngineId
  ///@param Placas
  ///@param DrillRigId
  ///@param PolicyId
  ///@param IncisoId
  ///@param PackagePolicyId
  ///@param MeasureId
  ///@param FuelMeasureId
  ///@param FuelTypeId
  ///@param CompanyId
  ///@param CategoryId
  ///@param TankSize
  ///@param Active
  @Put(path: '/api/Vehicle/{id}')
  @Multipart()
  Future<chopper.Response<bool>> _apiVehicleIdPut(
      {@Path('id') required String? id,
      @Query('PhotosToRemove') List<String>? photosToRemove,
      @Query('VIN') required String? vin,
      @Query('MachineId') required String? machineId,
      @Query('Description') required String? description,
      @Query('EconomicNumber') required String? economicNumber,
      @Query('AssignedId') String? assignedId,
      @Query('BrandId') String? brandId,
      @Query('ModelId') String? modelId,
      @Query('ModelYear') int? modelYear,
      @Query('EngineId') String? engineId,
      @Query('Placas') String? placas,
      @Query('DrillRigId') int? drillRigId,
      @Query('PolicyId') String? policyId,
      @Query('IncisoId') String? incisoId,
      @Query('PackagePolicyId') String? packagePolicyId,
      @Query('MeasureId') String? measureId,
      @Query('FuelMeasureId') String? fuelMeasureId,
      @Query('FuelTypeId') String? fuelTypeId,
      @Query('CompanyId') String? companyId,
      @Query('CategoryId') String? categoryId,
      @Query('TankSize') int? tankSize,
      @Query('Active') bool? active,
      @PartFile() required List<int> partFile});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiVehicleIdDelete({required String? id}) {
    return _apiVehicleIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Vehicle/{id}')
  Future<chopper.Response<bool>> _apiVehicleIdDelete(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<VehicleNewEditDTO>> apiVehicleGetFormGet(
      {String? id}) {
    generatedMapping.putIfAbsent(
        VehicleNewEditDTO, () => VehicleNewEditDTO.fromJsonFactory);

    return _apiVehicleGetFormGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Vehicle/GetForm')
  Future<chopper.Response<VehicleNewEditDTO>> _apiVehicleGetFormGet(
      {@Query('id') String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiVehicleEditIdPut(
      {required String? id, required VehiclePutDTO? body}) {
    return _apiVehicleEditIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Vehicle/Edit/{id}')
  Future<chopper.Response<bool>> _apiVehicleEditIdPut(
      {@Path('id') required String? id, @Body() required VehiclePutDTO? body});

  ///
  ///@param Id
  ///@param DId
  Future<chopper.Response<bool>> apiVehicleIdDrillRigDIdPut(
      {required String? id, required String? dId}) {
    return _apiVehicleIdDrillRigDIdPut(id: id, dId: dId);
  }

  ///
  ///@param Id
  ///@param DId
  @Put(path: '/api/Vehicle/{Id}/DrillRig/{DId}', optionalBody: true)
  Future<chopper.Response<bool>> _apiVehicleIdDrillRigDIdPut(
      {@Path('Id') required String? id, @Path('DId') required String? dId});

  ///
  ///@param Id
  ///@param CId
  Future<chopper.Response<bool>> apiVehicleIdCompanyCIdPut(
      {required String? id, required String? cId}) {
    return _apiVehicleIdCompanyCIdPut(id: id, cId: cId);
  }

  ///
  ///@param Id
  ///@param CId
  @Put(path: '/api/Vehicle/{Id}/Company/{CId}', optionalBody: true)
  Future<chopper.Response<bool>> _apiVehicleIdCompanyCIdPut(
      {@Path('Id') required String? id, @Path('CId') required String? cId});

  ///
  ///@param Id
  Future<chopper.Response<bool>> apiVehicleIdActivePut({required String? id}) {
    return _apiVehicleIdActivePut(id: id);
  }

  ///
  ///@param Id
  @Put(path: '/api/Vehicle/{Id}/Active', optionalBody: true)
  Future<chopper.Response<bool>> _apiVehicleIdActivePut(
      {@Path('Id') required String? id});

  ///
  ///@param vehicles
  Future<chopper.Response> apiVehicleDownloadGet({List<String>? vehicles}) {
    return _apiVehicleDownloadGet(vehicles: vehicles);
  }

  ///
  ///@param vehicles
  @Get(path: '/api/Vehicle/Download')
  Future<chopper.Response> _apiVehicleDownloadGet(
      {@Query('vehicles') List<String>? vehicles});

  ///
  Future<chopper.Response<List<VehicleTypeDTO>>> apiVehicleTypeGet() {
    generatedMapping.putIfAbsent(
        VehicleTypeDTO, () => VehicleTypeDTO.fromJsonFactory);

    return _apiVehicleTypeGet();
  }

  ///
  @Get(path: '/api/VehicleType')
  Future<chopper.Response<List<VehicleTypeDTO>>> _apiVehicleTypeGet();

  ///
  Future<chopper.Response<String>> apiVehicleTypePost(
      {required VehicleTypeDTO? body}) {
    return _apiVehicleTypePost(body: body);
  }

  ///
  @Post(path: '/api/VehicleType')
  Future<chopper.Response<String>> _apiVehicleTypePost(
      {@Body() required VehicleTypeDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<VehicleTypeDTOPagedResult>> apiVehicleTypeSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(VehicleTypeDTOPagedResult,
        () => VehicleTypeDTOPagedResult.fromJsonFactory);

    return _apiVehicleTypeSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/VehicleType/Search')
  Future<chopper.Response<VehicleTypeDTOPagedResult>> _apiVehicleTypeSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<VehicleTypeDTO>> apiVehicleTypeIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        VehicleTypeDTO, () => VehicleTypeDTO.fromJsonFactory);

    return _apiVehicleTypeIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/VehicleType/{id}')
  Future<chopper.Response<VehicleTypeDTO>> _apiVehicleTypeIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiVehicleTypeIdPut(
      {required String? id, required VehicleTypeDTO? body}) {
    return _apiVehicleTypeIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/VehicleType/{id}')
  Future<chopper.Response<bool>> _apiVehicleTypeIdPut(
      {@Path('id') required String? id, @Body() required VehicleTypeDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiVehicleTypeIdDelete({required String? id}) {
    return _apiVehicleTypeIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/VehicleType/{id}')
  Future<chopper.Response<bool>> _apiVehicleTypeIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<List<VendorDTO>>> apiVendorGet() {
    generatedMapping.putIfAbsent(VendorDTO, () => VendorDTO.fromJsonFactory);

    return _apiVendorGet();
  }

  ///
  @Get(path: '/api/Vendor')
  Future<chopper.Response<List<VendorDTO>>> _apiVendorGet();

  ///
  Future<chopper.Response<String>> apiVendorPost({required VendorDTO? body}) {
    return _apiVendorPost(body: body);
  }

  ///
  @Post(path: '/api/Vendor')
  Future<chopper.Response<String>> _apiVendorPost(
      {@Body() required VendorDTO? body});

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  Future<chopper.Response<VendorDTOPagedResult>> apiVendorSearchGet(
      {required int? page,
      String? search,
      String? orderByPropertyName,
      enums.SortOrderEnum? sortOrder,
      required int? pageSize}) {
    generatedMapping.putIfAbsent(
        VendorDTOPagedResult, () => VendorDTOPagedResult.fromJsonFactory);

    return _apiVendorSearchGet(
        page: page,
        search: search,
        orderByPropertyName: orderByPropertyName,
        sortOrder: enums.$SortOrderEnumMap[sortOrder]?.toString(),
        pageSize: pageSize);
  }

  ///
  ///@param Page
  ///@param Search
  ///@param OrderByPropertyName
  ///@param SortOrder
  ///@param PageSize
  @Get(path: '/api/Vendor/Search')
  Future<chopper.Response<VendorDTOPagedResult>> _apiVendorSearchGet(
      {@Query('Page') required int? page,
      @Query('Search') String? search,
      @Query('OrderByPropertyName') String? orderByPropertyName,
      @Query('SortOrder') String? sortOrder,
      @Query('PageSize') required int? pageSize});

  ///
  ///@param id
  Future<chopper.Response<VendorDTO>> apiVendorIdGet({required String? id}) {
    generatedMapping.putIfAbsent(VendorDTO, () => VendorDTO.fromJsonFactory);

    return _apiVendorIdGet(id: id);
  }

  ///
  ///@param id
  @Get(path: '/api/Vendor/{id}')
  Future<chopper.Response<VendorDTO>> _apiVendorIdGet(
      {@Path('id') required String? id});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiVendorIdPut(
      {required String? id, required VendorDTO? body}) {
    return _apiVendorIdPut(id: id, body: body);
  }

  ///
  ///@param id
  @Put(path: '/api/Vendor/{id}')
  Future<chopper.Response<bool>> _apiVendorIdPut(
      {@Path('id') required String? id, @Body() required VendorDTO? body});

  ///
  ///@param id
  Future<chopper.Response<bool>> apiVendorIdDelete({required String? id}) {
    return _apiVendorIdDelete(id: id);
  }

  ///
  ///@param id
  @Delete(path: '/api/Vendor/{id}')
  Future<chopper.Response<bool>> _apiVendorIdDelete(
      {@Path('id') required String? id});
}

@JsonSerializable(explicitToJson: true)
class AppUserDTO {
  AppUserDTO({
    this.id,
    this.email,
    this.name,
    this.image,
    this.firstName,
    this.lastName,
    this.titleAbbreviation,
    this.gender,
    this.url,
    this.countryCode,
    this.phone,
    this.country,
    this.city,
    this.address,
    this.rating,
    this.birthDate,
    this.active,
    this.costPerAppointment,
    this.department,
  });

  factory AppUserDTO.fromJson(Map<String, dynamic> json) =>
      _$AppUserDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'titleAbbreviation')
  final String? titleAbbreviation;
  @JsonKey(
      name: 'gender', toJson: genderEnumToJson, fromJson: genderEnumFromJson)
  final enums.GenderEnum? gender;
  @JsonKey(name: 'url')
  final String? url;
  @JsonKey(name: 'countryCode')
  final String? countryCode;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'country')
  final String? country;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'rating')
  final double? rating;
  @JsonKey(name: 'birthDate')
  final DateTime? birthDate;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'costPerAppointment')
  final double? costPerAppointment;
  @JsonKey(name: 'department', defaultValue: <SelectDTO>[])
  final List<SelectDTO>? department;
  static const fromJsonFactory = _$AppUserDTOFromJson;
  static const toJsonFactory = _$AppUserDTOToJson;
  Map<String, dynamic> toJson() => _$AppUserDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppUserDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.titleAbbreviation, titleAbbreviation) ||
                const DeepCollectionEquality()
                    .equals(other.titleAbbreviation, titleAbbreviation)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.costPerAppointment, costPerAppointment) ||
                const DeepCollectionEquality()
                    .equals(other.costPerAppointment, costPerAppointment)) &&
            (identical(other.department, department) ||
                const DeepCollectionEquality()
                    .equals(other.department, department)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(titleAbbreviation) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(costPerAppointment) ^
      const DeepCollectionEquality().hash(department) ^
      runtimeType.hashCode;
}

extension $AppUserDTOExtension on AppUserDTO {
  AppUserDTO copyWith(
      {String? id,
      String? email,
      String? name,
      String? image,
      String? firstName,
      String? lastName,
      String? titleAbbreviation,
      enums.GenderEnum? gender,
      String? url,
      String? countryCode,
      String? phone,
      String? country,
      String? city,
      String? address,
      double? rating,
      DateTime? birthDate,
      bool? active,
      double? costPerAppointment,
      List<SelectDTO>? department}) {
    return AppUserDTO(
        id: id ?? this.id,
        email: email ?? this.email,
        name: name ?? this.name,
        image: image ?? this.image,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        titleAbbreviation: titleAbbreviation ?? this.titleAbbreviation,
        gender: gender ?? this.gender,
        url: url ?? this.url,
        countryCode: countryCode ?? this.countryCode,
        phone: phone ?? this.phone,
        country: country ?? this.country,
        city: city ?? this.city,
        address: address ?? this.address,
        rating: rating ?? this.rating,
        birthDate: birthDate ?? this.birthDate,
        active: active ?? this.active,
        costPerAppointment: costPerAppointment ?? this.costPerAppointment,
        department: department ?? this.department);
  }
}

@JsonSerializable(explicitToJson: true)
class AppUserDTOPagedResult {
  AppUserDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory AppUserDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$AppUserDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <AppUserDTO>[])
  final List<AppUserDTO>? items;
  static const fromJsonFactory = _$AppUserDTOPagedResultFromJson;
  static const toJsonFactory = _$AppUserDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$AppUserDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AppUserDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $AppUserDTOPagedResultExtension on AppUserDTOPagedResult {
  AppUserDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<AppUserDTO>? items}) {
    return AppUserDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class AuthResponseDTO {
  AuthResponseDTO({
    this.userId,
    this.token,
    this.refreshToken,
    this.name,
    this.image,
    this.firstName,
    this.lastName,
    this.url,
    this.phone,
    this.active,
  });

  factory AuthResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseDTOFromJson(json);

  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'token')
  final String? token;
  @JsonKey(name: 'refreshToken')
  final String? refreshToken;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'url')
  final String? url;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'active')
  final bool? active;
  static const fromJsonFactory = _$AuthResponseDTOFromJson;
  static const toJsonFactory = _$AuthResponseDTOToJson;
  Map<String, dynamic> toJson() => _$AuthResponseDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthResponseDTO &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(active) ^
      runtimeType.hashCode;
}

extension $AuthResponseDTOExtension on AuthResponseDTO {
  AuthResponseDTO copyWith(
      {String? userId,
      String? token,
      String? refreshToken,
      String? name,
      String? image,
      String? firstName,
      String? lastName,
      String? url,
      String? phone,
      bool? active}) {
    return AuthResponseDTO(
        userId: userId ?? this.userId,
        token: token ?? this.token,
        refreshToken: refreshToken ?? this.refreshToken,
        name: name ?? this.name,
        image: image ?? this.image,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        url: url ?? this.url,
        phone: phone ?? this.phone,
        active: active ?? this.active);
  }
}

@JsonSerializable(explicitToJson: true)
class BrandDTO {
  BrandDTO({
    this.id,
    this.name,
    this.code,
    this.description,
  });

  factory BrandDTO.fromJson(Map<String, dynamic> json) =>
      _$BrandDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$BrandDTOFromJson;
  static const toJsonFactory = _$BrandDTOToJson;
  Map<String, dynamic> toJson() => _$BrandDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BrandDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $BrandDTOExtension on BrandDTO {
  BrandDTO copyWith(
      {String? id, String? name, String? code, String? description}) {
    return BrandDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class BrandDTOPagedResult {
  BrandDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory BrandDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$BrandDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <BrandDTO>[])
  final List<BrandDTO>? items;
  static const fromJsonFactory = _$BrandDTOPagedResultFromJson;
  static const toJsonFactory = _$BrandDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$BrandDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BrandDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $BrandDTOPagedResultExtension on BrandDTOPagedResult {
  BrandDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<BrandDTO>? items}) {
    return BrandDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class CategoryDTO {
  CategoryDTO({
    this.id,
    this.name,
    this.code,
    this.description,
  });

  factory CategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$CategoryDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$CategoryDTOFromJson;
  static const toJsonFactory = _$CategoryDTOToJson;
  Map<String, dynamic> toJson() => _$CategoryDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoryDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $CategoryDTOExtension on CategoryDTO {
  CategoryDTO copyWith(
      {String? id, String? name, String? code, String? description}) {
    return CategoryDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class CategoryDTOPagedResult {
  CategoryDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory CategoryDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$CategoryDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <CategoryDTO>[])
  final List<CategoryDTO>? items;
  static const fromJsonFactory = _$CategoryDTOPagedResultFromJson;
  static const toJsonFactory = _$CategoryDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$CategoryDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoryDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $CategoryDTOPagedResultExtension on CategoryDTOPagedResult {
  CategoryDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<CategoryDTO>? items}) {
    return CategoryDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class CompanyDTO {
  CompanyDTO({
    this.id,
    this.name,
    this.code,
    this.description,
  });

  factory CompanyDTO.fromJson(Map<String, dynamic> json) =>
      _$CompanyDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$CompanyDTOFromJson;
  static const toJsonFactory = _$CompanyDTOToJson;
  Map<String, dynamic> toJson() => _$CompanyDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompanyDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $CompanyDTOExtension on CompanyDTO {
  CompanyDTO copyWith(
      {String? id, String? name, String? code, String? description}) {
    return CompanyDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class CompanyDTOPagedResult {
  CompanyDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory CompanyDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$CompanyDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <CompanyDTO>[])
  final List<CompanyDTO>? items;
  static const fromJsonFactory = _$CompanyDTOPagedResultFromJson;
  static const toJsonFactory = _$CompanyDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$CompanyDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompanyDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $CompanyDTOPagedResultExtension on CompanyDTOPagedResult {
  CompanyDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<CompanyDTO>? items}) {
    return CompanyDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class CostCenterDTO {
  CostCenterDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.externalId,
  });

  factory CostCenterDTO.fromJson(Map<String, dynamic> json) =>
      _$CostCenterDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'externalId')
  final int? externalId;
  static const fromJsonFactory = _$CostCenterDTOFromJson;
  static const toJsonFactory = _$CostCenterDTOToJson;
  Map<String, dynamic> toJson() => _$CostCenterDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CostCenterDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.externalId, externalId) ||
                const DeepCollectionEquality()
                    .equals(other.externalId, externalId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(externalId) ^
      runtimeType.hashCode;
}

extension $CostCenterDTOExtension on CostCenterDTO {
  CostCenterDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      int? externalId}) {
    return CostCenterDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        externalId: externalId ?? this.externalId);
  }
}

@JsonSerializable(explicitToJson: true)
class CostCenterDTOPagedResult {
  CostCenterDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory CostCenterDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$CostCenterDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <CostCenterDTO>[])
  final List<CostCenterDTO>? items;
  static const fromJsonFactory = _$CostCenterDTOPagedResultFromJson;
  static const toJsonFactory = _$CostCenterDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$CostCenterDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CostCenterDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $CostCenterDTOPagedResultExtension on CostCenterDTOPagedResult {
  CostCenterDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<CostCenterDTO>? items}) {
    return CostCenterDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentDTO {
  DocumentDTO({
    this.id,
    this.path,
    this.fileName,
  });

  factory DocumentDTO.fromJson(Map<String, dynamic> json) =>
      _$DocumentDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'path')
  final String? path;
  @JsonKey(name: 'fileName')
  final String? fileName;
  static const fromJsonFactory = _$DocumentDTOFromJson;
  static const toJsonFactory = _$DocumentDTOToJson;
  Map<String, dynamic> toJson() => _$DocumentDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.fileName, fileName) ||
                const DeepCollectionEquality()
                    .equals(other.fileName, fileName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(fileName) ^
      runtimeType.hashCode;
}

extension $DocumentDTOExtension on DocumentDTO {
  DocumentDTO copyWith({String? id, String? path, String? fileName}) {
    return DocumentDTO(
        id: id ?? this.id,
        path: path ?? this.path,
        fileName: fileName ?? this.fileName);
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentDTOPagedResult {
  DocumentDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory DocumentDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$DocumentDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <DocumentDTO>[])
  final List<DocumentDTO>? items;
  static const fromJsonFactory = _$DocumentDTOPagedResultFromJson;
  static const toJsonFactory = _$DocumentDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$DocumentDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $DocumentDTOPagedResultExtension on DocumentDTOPagedResult {
  DocumentDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<DocumentDTO>? items}) {
    return DocumentDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class EditUserResponse {
  EditUserResponse({
    this.saved,
    this.image,
  });

  factory EditUserResponse.fromJson(Map<String, dynamic> json) =>
      _$EditUserResponseFromJson(json);

  @JsonKey(name: 'saved')
  final bool? saved;
  @JsonKey(name: 'image')
  final String? image;
  static const fromJsonFactory = _$EditUserResponseFromJson;
  static const toJsonFactory = _$EditUserResponseToJson;
  Map<String, dynamic> toJson() => _$EditUserResponseToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditUserResponse &&
            (identical(other.saved, saved) ||
                const DeepCollectionEquality().equals(other.saved, saved)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(saved) ^
      const DeepCollectionEquality().hash(image) ^
      runtimeType.hashCode;
}

extension $EditUserResponseExtension on EditUserResponse {
  EditUserResponse copyWith({bool? saved, String? image}) {
    return EditUserResponse(
        saved: saved ?? this.saved, image: image ?? this.image);
  }
}

@JsonSerializable(explicitToJson: true)
class EngineDTO {
  EngineDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.modelId,
  });

  factory EngineDTO.fromJson(Map<String, dynamic> json) =>
      _$EngineDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'modelId')
  final String? modelId;
  static const fromJsonFactory = _$EngineDTOFromJson;
  static const toJsonFactory = _$EngineDTOToJson;
  Map<String, dynamic> toJson() => _$EngineDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EngineDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.modelId, modelId) ||
                const DeepCollectionEquality().equals(other.modelId, modelId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(modelId) ^
      runtimeType.hashCode;
}

extension $EngineDTOExtension on EngineDTO {
  EngineDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      String? modelId}) {
    return EngineDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        modelId: modelId ?? this.modelId);
  }
}

@JsonSerializable(explicitToJson: true)
class EngineDTOPagedResult {
  EngineDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory EngineDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$EngineDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <EngineDTO>[])
  final List<EngineDTO>? items;
  static const fromJsonFactory = _$EngineDTOPagedResultFromJson;
  static const toJsonFactory = _$EngineDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$EngineDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EngineDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $EngineDTOPagedResultExtension on EngineDTOPagedResult {
  EngineDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<EngineDTO>? items}) {
    return EngineDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class FuelLoadDTO {
  FuelLoadDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.chargeDate,
    this.chargeHour,
    this.liters,
    this.odometer,
    this.unitCost,
    this.amount,
    this.reference,
    this.full,
    this.documentId,
    this.vehicleId,
  });

  factory FuelLoadDTO.fromJson(Map<String, dynamic> json) =>
      _$FuelLoadDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'chargeDate')
  final DateTime? chargeDate;
  @JsonKey(name: 'chargeHour')
  final TimeSpan? chargeHour;
  @JsonKey(name: 'liters')
  final int? liters;
  @JsonKey(name: 'odometer')
  final String? odometer;
  @JsonKey(name: 'unitCost')
  final double? unitCost;
  @JsonKey(name: 'amount')
  final double? amount;
  @JsonKey(name: 'reference')
  final String? reference;
  @JsonKey(name: 'full')
  final bool? full;
  @JsonKey(name: 'documentId')
  final String? documentId;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  static const fromJsonFactory = _$FuelLoadDTOFromJson;
  static const toJsonFactory = _$FuelLoadDTOToJson;
  Map<String, dynamic> toJson() => _$FuelLoadDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FuelLoadDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.chargeDate, chargeDate) ||
                const DeepCollectionEquality()
                    .equals(other.chargeDate, chargeDate)) &&
            (identical(other.chargeHour, chargeHour) ||
                const DeepCollectionEquality()
                    .equals(other.chargeHour, chargeHour)) &&
            (identical(other.liters, liters) ||
                const DeepCollectionEquality().equals(other.liters, liters)) &&
            (identical(other.odometer, odometer) ||
                const DeepCollectionEquality()
                    .equals(other.odometer, odometer)) &&
            (identical(other.unitCost, unitCost) ||
                const DeepCollectionEquality()
                    .equals(other.unitCost, unitCost)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.reference, reference) ||
                const DeepCollectionEquality()
                    .equals(other.reference, reference)) &&
            (identical(other.full, full) ||
                const DeepCollectionEquality().equals(other.full, full)) &&
            (identical(other.documentId, documentId) ||
                const DeepCollectionEquality()
                    .equals(other.documentId, documentId)) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleId, vehicleId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(chargeDate) ^
      const DeepCollectionEquality().hash(chargeHour) ^
      const DeepCollectionEquality().hash(liters) ^
      const DeepCollectionEquality().hash(odometer) ^
      const DeepCollectionEquality().hash(unitCost) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(reference) ^
      const DeepCollectionEquality().hash(full) ^
      const DeepCollectionEquality().hash(documentId) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $FuelLoadDTOExtension on FuelLoadDTO {
  FuelLoadDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      DateTime? chargeDate,
      TimeSpan? chargeHour,
      int? liters,
      String? odometer,
      double? unitCost,
      double? amount,
      String? reference,
      bool? full,
      String? documentId,
      String? vehicleId}) {
    return FuelLoadDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        chargeDate: chargeDate ?? this.chargeDate,
        chargeHour: chargeHour ?? this.chargeHour,
        liters: liters ?? this.liters,
        odometer: odometer ?? this.odometer,
        unitCost: unitCost ?? this.unitCost,
        amount: amount ?? this.amount,
        reference: reference ?? this.reference,
        full: full ?? this.full,
        documentId: documentId ?? this.documentId,
        vehicleId: vehicleId ?? this.vehicleId);
  }
}

@JsonSerializable(explicitToJson: true)
class FuelLoadDTOPagedResult {
  FuelLoadDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory FuelLoadDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$FuelLoadDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <FuelLoadDTO>[])
  final List<FuelLoadDTO>? items;
  static const fromJsonFactory = _$FuelLoadDTOPagedResultFromJson;
  static const toJsonFactory = _$FuelLoadDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$FuelLoadDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FuelLoadDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $FuelLoadDTOPagedResultExtension on FuelLoadDTOPagedResult {
  FuelLoadDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<FuelLoadDTO>? items}) {
    return FuelLoadDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class FuelMeasureDTO {
  FuelMeasureDTO({
    this.id,
    this.name,
    this.code,
    this.description,
  });

  factory FuelMeasureDTO.fromJson(Map<String, dynamic> json) =>
      _$FuelMeasureDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$FuelMeasureDTOFromJson;
  static const toJsonFactory = _$FuelMeasureDTOToJson;
  Map<String, dynamic> toJson() => _$FuelMeasureDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FuelMeasureDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $FuelMeasureDTOExtension on FuelMeasureDTO {
  FuelMeasureDTO copyWith(
      {String? id, String? name, String? code, String? description}) {
    return FuelMeasureDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class FuelMeasureDTOPagedResult {
  FuelMeasureDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory FuelMeasureDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$FuelMeasureDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <FuelMeasureDTO>[])
  final List<FuelMeasureDTO>? items;
  static const fromJsonFactory = _$FuelMeasureDTOPagedResultFromJson;
  static const toJsonFactory = _$FuelMeasureDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$FuelMeasureDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FuelMeasureDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $FuelMeasureDTOPagedResultExtension on FuelMeasureDTOPagedResult {
  FuelMeasureDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<FuelMeasureDTO>? items}) {
    return FuelMeasureDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class FuelTypeDTO {
  FuelTypeDTO({
    this.id,
    this.name,
    this.code,
    this.description,
  });

  factory FuelTypeDTO.fromJson(Map<String, dynamic> json) =>
      _$FuelTypeDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$FuelTypeDTOFromJson;
  static const toJsonFactory = _$FuelTypeDTOToJson;
  Map<String, dynamic> toJson() => _$FuelTypeDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FuelTypeDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $FuelTypeDTOExtension on FuelTypeDTO {
  FuelTypeDTO copyWith(
      {String? id, String? name, String? code, String? description}) {
    return FuelTypeDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class FuelTypeDTOPagedResult {
  FuelTypeDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory FuelTypeDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$FuelTypeDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <FuelTypeDTO>[])
  final List<FuelTypeDTO>? items;
  static const fromJsonFactory = _$FuelTypeDTOPagedResultFromJson;
  static const toJsonFactory = _$FuelTypeDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$FuelTypeDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FuelTypeDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $FuelTypeDTOPagedResultExtension on FuelTypeDTOPagedResult {
  FuelTypeDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<FuelTypeDTO>? items}) {
    return FuelTypeDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class FuelVendorDTO {
  FuelVendorDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.externalId,
  });

  factory FuelVendorDTO.fromJson(Map<String, dynamic> json) =>
      _$FuelVendorDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'externalId')
  final int? externalId;
  static const fromJsonFactory = _$FuelVendorDTOFromJson;
  static const toJsonFactory = _$FuelVendorDTOToJson;
  Map<String, dynamic> toJson() => _$FuelVendorDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FuelVendorDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.externalId, externalId) ||
                const DeepCollectionEquality()
                    .equals(other.externalId, externalId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(externalId) ^
      runtimeType.hashCode;
}

extension $FuelVendorDTOExtension on FuelVendorDTO {
  FuelVendorDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      int? externalId}) {
    return FuelVendorDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        externalId: externalId ?? this.externalId);
  }
}

@JsonSerializable(explicitToJson: true)
class FuelVendorDTOPagedResult {
  FuelVendorDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory FuelVendorDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$FuelVendorDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <FuelVendorDTO>[])
  final List<FuelVendorDTO>? items;
  static const fromJsonFactory = _$FuelVendorDTOPagedResultFromJson;
  static const toJsonFactory = _$FuelVendorDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$FuelVendorDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FuelVendorDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $FuelVendorDTOPagedResultExtension on FuelVendorDTOPagedResult {
  FuelVendorDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<FuelVendorDTO>? items}) {
    return FuelVendorDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class ImageDTO {
  ImageDTO({
    this.id,
    this.path,
    this.name,
    this.extension,
    this.vehicleId,
  });

  factory ImageDTO.fromJson(Map<String, dynamic> json) =>
      _$ImageDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'path')
  final String? path;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'extension')
  final String? extension;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  static const fromJsonFactory = _$ImageDTOFromJson;
  static const toJsonFactory = _$ImageDTOToJson;
  Map<String, dynamic> toJson() => _$ImageDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.extension, extension) ||
                const DeepCollectionEquality()
                    .equals(other.extension, extension)) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleId, vehicleId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(extension) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $ImageDTOExtension on ImageDTO {
  ImageDTO copyWith(
      {String? id,
      String? path,
      String? name,
      String? extension,
      String? vehicleId}) {
    return ImageDTO(
        id: id ?? this.id,
        path: path ?? this.path,
        name: name ?? this.name,
        extension: extension ?? this.extension,
        vehicleId: vehicleId ?? this.vehicleId);
  }
}

@JsonSerializable(explicitToJson: true)
class ImageDTOPagedResult {
  ImageDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory ImageDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$ImageDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <ImageDTO>[])
  final List<ImageDTO>? items;
  static const fromJsonFactory = _$ImageDTOPagedResultFromJson;
  static const toJsonFactory = _$ImageDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$ImageDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $ImageDTOPagedResultExtension on ImageDTOPagedResult {
  ImageDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<ImageDTO>? items}) {
    return ImageDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class IncidentDTO {
  IncidentDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.vehicleId,
  });

  factory IncidentDTO.fromJson(Map<String, dynamic> json) =>
      _$IncidentDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  static const fromJsonFactory = _$IncidentDTOFromJson;
  static const toJsonFactory = _$IncidentDTOToJson;
  Map<String, dynamic> toJson() => _$IncidentDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IncidentDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleId, vehicleId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $IncidentDTOExtension on IncidentDTO {
  IncidentDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      String? vehicleId}) {
    return IncidentDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        vehicleId: vehicleId ?? this.vehicleId);
  }
}

@JsonSerializable(explicitToJson: true)
class IncidentDTOPagedResult {
  IncidentDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory IncidentDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$IncidentDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <IncidentDTO>[])
  final List<IncidentDTO>? items;
  static const fromJsonFactory = _$IncidentDTOPagedResultFromJson;
  static const toJsonFactory = _$IncidentDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$IncidentDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IncidentDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $IncidentDTOPagedResultExtension on IncidentDTOPagedResult {
  IncidentDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<IncidentDTO>? items}) {
    return IncidentDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class IncisoDTO {
  IncisoDTO({
    this.id,
    this.name,
    this.policyId,
  });

  factory IncisoDTO.fromJson(Map<String, dynamic> json) =>
      _$IncisoDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'policyId')
  final String? policyId;
  static const fromJsonFactory = _$IncisoDTOFromJson;
  static const toJsonFactory = _$IncisoDTOToJson;
  Map<String, dynamic> toJson() => _$IncisoDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IncisoDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.policyId, policyId) ||
                const DeepCollectionEquality()
                    .equals(other.policyId, policyId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(policyId) ^
      runtimeType.hashCode;
}

extension $IncisoDTOExtension on IncisoDTO {
  IncisoDTO copyWith({String? id, String? name, String? policyId}) {
    return IncisoDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        policyId: policyId ?? this.policyId);
  }
}

@JsonSerializable(explicitToJson: true)
class IncisoDTOPagedResult {
  IncisoDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory IncisoDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$IncisoDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <IncisoDTO>[])
  final List<IncisoDTO>? items;
  static const fromJsonFactory = _$IncisoDTOPagedResultFromJson;
  static const toJsonFactory = _$IncisoDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$IncisoDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IncisoDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $IncisoDTOPagedResultExtension on IncisoDTOPagedResult {
  IncisoDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<IncisoDTO>? items}) {
    return IncisoDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class InsuranceCompanyDTO {
  InsuranceCompanyDTO({
    this.id,
    this.name,
    this.code,
    this.description,
  });

  factory InsuranceCompanyDTO.fromJson(Map<String, dynamic> json) =>
      _$InsuranceCompanyDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$InsuranceCompanyDTOFromJson;
  static const toJsonFactory = _$InsuranceCompanyDTOToJson;
  Map<String, dynamic> toJson() => _$InsuranceCompanyDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InsuranceCompanyDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $InsuranceCompanyDTOExtension on InsuranceCompanyDTO {
  InsuranceCompanyDTO copyWith(
      {String? id, String? name, String? code, String? description}) {
    return InsuranceCompanyDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class InsuranceCompanyDTOPagedResult {
  InsuranceCompanyDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory InsuranceCompanyDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$InsuranceCompanyDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <InsuranceCompanyDTO>[])
  final List<InsuranceCompanyDTO>? items;
  static const fromJsonFactory = _$InsuranceCompanyDTOPagedResultFromJson;
  static const toJsonFactory = _$InsuranceCompanyDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$InsuranceCompanyDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InsuranceCompanyDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $InsuranceCompanyDTOPagedResultExtension
    on InsuranceCompanyDTOPagedResult {
  InsuranceCompanyDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<InsuranceCompanyDTO>? items}) {
    return InsuranceCompanyDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class LoginDTO {
  LoginDTO({
    required this.email,
    required this.password,
  });

  factory LoginDTO.fromJson(Map<String, dynamic> json) =>
      _$LoginDTOFromJson(json);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'password')
  final String password;
  static const fromJsonFactory = _$LoginDTOFromJson;
  static const toJsonFactory = _$LoginDTOToJson;
  Map<String, dynamic> toJson() => _$LoginDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginDTO &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $LoginDTOExtension on LoginDTO {
  LoginDTO copyWith({String? email, String? password}) {
    return LoginDTO(
        email: email ?? this.email, password: password ?? this.password);
  }
}

@JsonSerializable(explicitToJson: true)
class MachineDTO {
  MachineDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.drillRigId,
  });

  factory MachineDTO.fromJson(Map<String, dynamic> json) =>
      _$MachineDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'drillRigId')
  final int? drillRigId;
  static const fromJsonFactory = _$MachineDTOFromJson;
  static const toJsonFactory = _$MachineDTOToJson;
  Map<String, dynamic> toJson() => _$MachineDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MachineDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.drillRigId, drillRigId) ||
                const DeepCollectionEquality()
                    .equals(other.drillRigId, drillRigId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(drillRigId) ^
      runtimeType.hashCode;
}

extension $MachineDTOExtension on MachineDTO {
  MachineDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      int? drillRigId}) {
    return MachineDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        drillRigId: drillRigId ?? this.drillRigId);
  }
}

@JsonSerializable(explicitToJson: true)
class MachineDTOPagedResult {
  MachineDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory MachineDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$MachineDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <MachineDTO>[])
  final List<MachineDTO>? items;
  static const fromJsonFactory = _$MachineDTOPagedResultFromJson;
  static const toJsonFactory = _$MachineDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$MachineDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MachineDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $MachineDTOPagedResultExtension on MachineDTOPagedResult {
  MachineDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<MachineDTO>? items}) {
    return MachineDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class MaintenanceDTO {
  MaintenanceDTO({
    this.id,
    this.name,
    this.startDate,
    this.finishDate,
    this.startHour,
    this.finishHour,
    this.comments,
    this.odometer,
    this.maintenanceTypeId,
    this.maintenanceGroupId,
    this.vendorId,
    this.vehicleId,
    this.documentId,
  });

  factory MaintenanceDTO.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'startDate')
  final DateTime? startDate;
  @JsonKey(name: 'finishDate')
  final DateTime? finishDate;
  @JsonKey(name: 'startHour')
  final TimeSpan? startHour;
  @JsonKey(name: 'finishHour')
  final TimeSpan? finishHour;
  @JsonKey(name: 'comments')
  final String? comments;
  @JsonKey(name: 'odometer')
  final String? odometer;
  @JsonKey(name: 'maintenanceTypeId')
  final String? maintenanceTypeId;
  @JsonKey(name: 'maintenanceGroupId')
  final String? maintenanceGroupId;
  @JsonKey(name: 'vendorId')
  final String? vendorId;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  @JsonKey(name: 'documentId')
  final String? documentId;
  static const fromJsonFactory = _$MaintenanceDTOFromJson;
  static const toJsonFactory = _$MaintenanceDTOToJson;
  Map<String, dynamic> toJson() => _$MaintenanceDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MaintenanceDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.finishDate, finishDate) ||
                const DeepCollectionEquality()
                    .equals(other.finishDate, finishDate)) &&
            (identical(other.startHour, startHour) ||
                const DeepCollectionEquality()
                    .equals(other.startHour, startHour)) &&
            (identical(other.finishHour, finishHour) ||
                const DeepCollectionEquality()
                    .equals(other.finishHour, finishHour)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.odometer, odometer) ||
                const DeepCollectionEquality()
                    .equals(other.odometer, odometer)) &&
            (identical(other.maintenanceTypeId, maintenanceTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.maintenanceTypeId, maintenanceTypeId)) &&
            (identical(other.maintenanceGroupId, maintenanceGroupId) ||
                const DeepCollectionEquality()
                    .equals(other.maintenanceGroupId, maintenanceGroupId)) &&
            (identical(other.vendorId, vendorId) ||
                const DeepCollectionEquality()
                    .equals(other.vendorId, vendorId)) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleId, vehicleId)) &&
            (identical(other.documentId, documentId) ||
                const DeepCollectionEquality()
                    .equals(other.documentId, documentId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(finishDate) ^
      const DeepCollectionEquality().hash(startHour) ^
      const DeepCollectionEquality().hash(finishHour) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(odometer) ^
      const DeepCollectionEquality().hash(maintenanceTypeId) ^
      const DeepCollectionEquality().hash(maintenanceGroupId) ^
      const DeepCollectionEquality().hash(vendorId) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      const DeepCollectionEquality().hash(documentId) ^
      runtimeType.hashCode;
}

extension $MaintenanceDTOExtension on MaintenanceDTO {
  MaintenanceDTO copyWith(
      {String? id,
      String? name,
      DateTime? startDate,
      DateTime? finishDate,
      TimeSpan? startHour,
      TimeSpan? finishHour,
      String? comments,
      String? odometer,
      String? maintenanceTypeId,
      String? maintenanceGroupId,
      String? vendorId,
      String? vehicleId,
      String? documentId}) {
    return MaintenanceDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        startDate: startDate ?? this.startDate,
        finishDate: finishDate ?? this.finishDate,
        startHour: startHour ?? this.startHour,
        finishHour: finishHour ?? this.finishHour,
        comments: comments ?? this.comments,
        odometer: odometer ?? this.odometer,
        maintenanceTypeId: maintenanceTypeId ?? this.maintenanceTypeId,
        maintenanceGroupId: maintenanceGroupId ?? this.maintenanceGroupId,
        vendorId: vendorId ?? this.vendorId,
        vehicleId: vehicleId ?? this.vehicleId,
        documentId: documentId ?? this.documentId);
  }
}

@JsonSerializable(explicitToJson: true)
class MaintenanceDTOPagedResult {
  MaintenanceDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory MaintenanceDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <MaintenanceDTO>[])
  final List<MaintenanceDTO>? items;
  static const fromJsonFactory = _$MaintenanceDTOPagedResultFromJson;
  static const toJsonFactory = _$MaintenanceDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$MaintenanceDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MaintenanceDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $MaintenanceDTOPagedResultExtension on MaintenanceDTOPagedResult {
  MaintenanceDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<MaintenanceDTO>? items}) {
    return MaintenanceDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class MaintenanceGroupDTO {
  MaintenanceGroupDTO({
    this.id,
    this.name,
    this.code,
    this.description,
  });

  factory MaintenanceGroupDTO.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceGroupDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$MaintenanceGroupDTOFromJson;
  static const toJsonFactory = _$MaintenanceGroupDTOToJson;
  Map<String, dynamic> toJson() => _$MaintenanceGroupDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MaintenanceGroupDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $MaintenanceGroupDTOExtension on MaintenanceGroupDTO {
  MaintenanceGroupDTO copyWith(
      {String? id, String? name, String? code, String? description}) {
    return MaintenanceGroupDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class MaintenanceGroupDTOPagedResult {
  MaintenanceGroupDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory MaintenanceGroupDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceGroupDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <MaintenanceGroupDTO>[])
  final List<MaintenanceGroupDTO>? items;
  static const fromJsonFactory = _$MaintenanceGroupDTOPagedResultFromJson;
  static const toJsonFactory = _$MaintenanceGroupDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$MaintenanceGroupDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MaintenanceGroupDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $MaintenanceGroupDTOPagedResultExtension
    on MaintenanceGroupDTOPagedResult {
  MaintenanceGroupDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<MaintenanceGroupDTO>? items}) {
    return MaintenanceGroupDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class MaintenancePartDTO {
  MaintenancePartDTO({
    this.id,
    this.maintenanceId,
    this.partId,
  });

  factory MaintenancePartDTO.fromJson(Map<String, dynamic> json) =>
      _$MaintenancePartDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'maintenanceId')
  final String? maintenanceId;
  @JsonKey(name: 'partId')
  final String? partId;
  static const fromJsonFactory = _$MaintenancePartDTOFromJson;
  static const toJsonFactory = _$MaintenancePartDTOToJson;
  Map<String, dynamic> toJson() => _$MaintenancePartDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MaintenancePartDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.maintenanceId, maintenanceId) ||
                const DeepCollectionEquality()
                    .equals(other.maintenanceId, maintenanceId)) &&
            (identical(other.partId, partId) ||
                const DeepCollectionEquality().equals(other.partId, partId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(maintenanceId) ^
      const DeepCollectionEquality().hash(partId) ^
      runtimeType.hashCode;
}

extension $MaintenancePartDTOExtension on MaintenancePartDTO {
  MaintenancePartDTO copyWith(
      {String? id, String? maintenanceId, String? partId}) {
    return MaintenancePartDTO(
        id: id ?? this.id,
        maintenanceId: maintenanceId ?? this.maintenanceId,
        partId: partId ?? this.partId);
  }
}

@JsonSerializable(explicitToJson: true)
class MaintenancePartDTOPagedResult {
  MaintenancePartDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory MaintenancePartDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$MaintenancePartDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <MaintenancePartDTO>[])
  final List<MaintenancePartDTO>? items;
  static const fromJsonFactory = _$MaintenancePartDTOPagedResultFromJson;
  static const toJsonFactory = _$MaintenancePartDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$MaintenancePartDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MaintenancePartDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $MaintenancePartDTOPagedResultExtension
    on MaintenancePartDTOPagedResult {
  MaintenancePartDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<MaintenancePartDTO>? items}) {
    return MaintenancePartDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class MaintenanceTypeDTO {
  MaintenanceTypeDTO({
    this.id,
    this.name,
    this.code,
    this.description,
  });

  factory MaintenanceTypeDTO.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceTypeDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$MaintenanceTypeDTOFromJson;
  static const toJsonFactory = _$MaintenanceTypeDTOToJson;
  Map<String, dynamic> toJson() => _$MaintenanceTypeDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MaintenanceTypeDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $MaintenanceTypeDTOExtension on MaintenanceTypeDTO {
  MaintenanceTypeDTO copyWith(
      {String? id, String? name, String? code, String? description}) {
    return MaintenanceTypeDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class MaintenanceTypeDTOPagedResult {
  MaintenanceTypeDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory MaintenanceTypeDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceTypeDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <MaintenanceTypeDTO>[])
  final List<MaintenanceTypeDTO>? items;
  static const fromJsonFactory = _$MaintenanceTypeDTOPagedResultFromJson;
  static const toJsonFactory = _$MaintenanceTypeDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$MaintenanceTypeDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MaintenanceTypeDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $MaintenanceTypeDTOPagedResultExtension
    on MaintenanceTypeDTOPagedResult {
  MaintenanceTypeDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<MaintenanceTypeDTO>? items}) {
    return MaintenanceTypeDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class MeasureDTO {
  MeasureDTO({
    this.id,
    this.name,
    this.code,
    this.description,
  });

  factory MeasureDTO.fromJson(Map<String, dynamic> json) =>
      _$MeasureDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$MeasureDTOFromJson;
  static const toJsonFactory = _$MeasureDTOToJson;
  Map<String, dynamic> toJson() => _$MeasureDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MeasureDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $MeasureDTOExtension on MeasureDTO {
  MeasureDTO copyWith(
      {String? id, String? name, String? code, String? description}) {
    return MeasureDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class MeasureDTOPagedResult {
  MeasureDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory MeasureDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$MeasureDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <MeasureDTO>[])
  final List<MeasureDTO>? items;
  static const fromJsonFactory = _$MeasureDTOPagedResultFromJson;
  static const toJsonFactory = _$MeasureDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$MeasureDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MeasureDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $MeasureDTOPagedResultExtension on MeasureDTOPagedResult {
  MeasureDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<MeasureDTO>? items}) {
    return MeasureDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class ModelDTO {
  ModelDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.brandId,
  });

  factory ModelDTO.fromJson(Map<String, dynamic> json) =>
      _$ModelDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'brandId')
  final String? brandId;
  static const fromJsonFactory = _$ModelDTOFromJson;
  static const toJsonFactory = _$ModelDTOToJson;
  Map<String, dynamic> toJson() => _$ModelDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.brandId, brandId) ||
                const DeepCollectionEquality().equals(other.brandId, brandId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(brandId) ^
      runtimeType.hashCode;
}

extension $ModelDTOExtension on ModelDTO {
  ModelDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      String? brandId}) {
    return ModelDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        brandId: brandId ?? this.brandId);
  }
}

@JsonSerializable(explicitToJson: true)
class ModelDTOPagedResult {
  ModelDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory ModelDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$ModelDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <ModelDTO>[])
  final List<ModelDTO>? items;
  static const fromJsonFactory = _$ModelDTOPagedResultFromJson;
  static const toJsonFactory = _$ModelDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$ModelDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ModelDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $ModelDTOPagedResultExtension on ModelDTOPagedResult {
  ModelDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<ModelDTO>? items}) {
    return ModelDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class PackagePolicyDTO {
  PackagePolicyDTO({
    this.id,
    this.name,
    this.code,
    this.description,
  });

  factory PackagePolicyDTO.fromJson(Map<String, dynamic> json) =>
      _$PackagePolicyDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$PackagePolicyDTOFromJson;
  static const toJsonFactory = _$PackagePolicyDTOToJson;
  Map<String, dynamic> toJson() => _$PackagePolicyDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PackagePolicyDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $PackagePolicyDTOExtension on PackagePolicyDTO {
  PackagePolicyDTO copyWith(
      {String? id, String? name, String? code, String? description}) {
    return PackagePolicyDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class PackagePolicyDTOPagedResult {
  PackagePolicyDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory PackagePolicyDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$PackagePolicyDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <PackagePolicyDTO>[])
  final List<PackagePolicyDTO>? items;
  static const fromJsonFactory = _$PackagePolicyDTOPagedResultFromJson;
  static const toJsonFactory = _$PackagePolicyDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$PackagePolicyDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PackagePolicyDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $PackagePolicyDTOPagedResultExtension on PackagePolicyDTOPagedResult {
  PackagePolicyDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<PackagePolicyDTO>? items}) {
    return PackagePolicyDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class PartDTO {
  PartDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.externalId,
    this.vendorId,
  });

  factory PartDTO.fromJson(Map<String, dynamic> json) =>
      _$PartDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'externalId')
  final int? externalId;
  @JsonKey(name: 'vendorId')
  final String? vendorId;
  static const fromJsonFactory = _$PartDTOFromJson;
  static const toJsonFactory = _$PartDTOToJson;
  Map<String, dynamic> toJson() => _$PartDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PartDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.externalId, externalId) ||
                const DeepCollectionEquality()
                    .equals(other.externalId, externalId)) &&
            (identical(other.vendorId, vendorId) ||
                const DeepCollectionEquality()
                    .equals(other.vendorId, vendorId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(externalId) ^
      const DeepCollectionEquality().hash(vendorId) ^
      runtimeType.hashCode;
}

extension $PartDTOExtension on PartDTO {
  PartDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      int? externalId,
      String? vendorId}) {
    return PartDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        externalId: externalId ?? this.externalId,
        vendorId: vendorId ?? this.vendorId);
  }
}

@JsonSerializable(explicitToJson: true)
class PartDTOPagedResult {
  PartDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory PartDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$PartDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <PartDTO>[])
  final List<PartDTO>? items;
  static const fromJsonFactory = _$PartDTOPagedResultFromJson;
  static const toJsonFactory = _$PartDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$PartDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PartDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $PartDTOPagedResultExtension on PartDTOPagedResult {
  PartDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<PartDTO>? items}) {
    return PartDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class PerformanceDTO {
  PerformanceDTO({
    this.value,
    this.date,
  });

  factory PerformanceDTO.fromJson(Map<String, dynamic> json) =>
      _$PerformanceDTOFromJson(json);

  @JsonKey(name: 'value')
  final double? value;
  @JsonKey(name: 'date')
  final String? date;
  static const fromJsonFactory = _$PerformanceDTOFromJson;
  static const toJsonFactory = _$PerformanceDTOToJson;
  Map<String, dynamic> toJson() => _$PerformanceDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PerformanceDTO &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(date) ^
      runtimeType.hashCode;
}

extension $PerformanceDTOExtension on PerformanceDTO {
  PerformanceDTO copyWith({double? value, String? date}) {
    return PerformanceDTO(value: value ?? this.value, date: date ?? this.date);
  }
}

@JsonSerializable(explicitToJson: true)
class PolicyDTO {
  PolicyDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.startDate,
    this.endDate,
    this.quantityVehicles,
    this.policyStatusId,
    this.packagePolicyId,
    this.insuranceCompanyId,
  });

  factory PolicyDTO.fromJson(Map<String, dynamic> json) =>
      _$PolicyDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'startDate')
  final DateTime? startDate;
  @JsonKey(name: 'endDate')
  final DateTime? endDate;
  @JsonKey(name: 'quantityVehicles')
  final int? quantityVehicles;
  @JsonKey(name: 'policyStatusId')
  final String? policyStatusId;
  @JsonKey(name: 'packagePolicyId')
  final String? packagePolicyId;
  @JsonKey(name: 'insuranceCompanyId')
  final String? insuranceCompanyId;
  static const fromJsonFactory = _$PolicyDTOFromJson;
  static const toJsonFactory = _$PolicyDTOToJson;
  Map<String, dynamic> toJson() => _$PolicyDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PolicyDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.quantityVehicles, quantityVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.quantityVehicles, quantityVehicles)) &&
            (identical(other.policyStatusId, policyStatusId) ||
                const DeepCollectionEquality()
                    .equals(other.policyStatusId, policyStatusId)) &&
            (identical(other.packagePolicyId, packagePolicyId) ||
                const DeepCollectionEquality()
                    .equals(other.packagePolicyId, packagePolicyId)) &&
            (identical(other.insuranceCompanyId, insuranceCompanyId) ||
                const DeepCollectionEquality()
                    .equals(other.insuranceCompanyId, insuranceCompanyId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(quantityVehicles) ^
      const DeepCollectionEquality().hash(policyStatusId) ^
      const DeepCollectionEquality().hash(packagePolicyId) ^
      const DeepCollectionEquality().hash(insuranceCompanyId) ^
      runtimeType.hashCode;
}

extension $PolicyDTOExtension on PolicyDTO {
  PolicyDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      DateTime? startDate,
      DateTime? endDate,
      int? quantityVehicles,
      String? policyStatusId,
      String? packagePolicyId,
      String? insuranceCompanyId}) {
    return PolicyDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        quantityVehicles: quantityVehicles ?? this.quantityVehicles,
        policyStatusId: policyStatusId ?? this.policyStatusId,
        packagePolicyId: packagePolicyId ?? this.packagePolicyId,
        insuranceCompanyId: insuranceCompanyId ?? this.insuranceCompanyId);
  }
}

@JsonSerializable(explicitToJson: true)
class PolicyDTOPagedResult {
  PolicyDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory PolicyDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$PolicyDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <PolicyDTO>[])
  final List<PolicyDTO>? items;
  static const fromJsonFactory = _$PolicyDTOPagedResultFromJson;
  static const toJsonFactory = _$PolicyDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$PolicyDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PolicyDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $PolicyDTOPagedResultExtension on PolicyDTOPagedResult {
  PolicyDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<PolicyDTO>? items}) {
    return PolicyDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class PolicyStatusDTO {
  PolicyStatusDTO({
    this.id,
    this.name,
    this.code,
    this.description,
  });

  factory PolicyStatusDTO.fromJson(Map<String, dynamic> json) =>
      _$PolicyStatusDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$PolicyStatusDTOFromJson;
  static const toJsonFactory = _$PolicyStatusDTOToJson;
  Map<String, dynamic> toJson() => _$PolicyStatusDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PolicyStatusDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $PolicyStatusDTOExtension on PolicyStatusDTO {
  PolicyStatusDTO copyWith(
      {String? id, String? name, String? code, String? description}) {
    return PolicyStatusDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class PolicyStatusDTOPagedResult {
  PolicyStatusDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory PolicyStatusDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$PolicyStatusDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <PolicyStatusDTO>[])
  final List<PolicyStatusDTO>? items;
  static const fromJsonFactory = _$PolicyStatusDTOPagedResultFromJson;
  static const toJsonFactory = _$PolicyStatusDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$PolicyStatusDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PolicyStatusDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $PolicyStatusDTOPagedResultExtension on PolicyStatusDTOPagedResult {
  PolicyStatusDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<PolicyStatusDTO>? items}) {
    return PolicyStatusDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class ProblemDetails {
  ProblemDetails({
    this.type,
    this.title,
    this.status,
    this.detail,
    this.instance,
  });

  factory ProblemDetails.fromJson(Map<String, dynamic> json) =>
      _$ProblemDetailsFromJson(json);

  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'status')
  final int? status;
  @JsonKey(name: 'detail')
  final String? detail;
  @JsonKey(name: 'instance')
  final String? instance;
  static const fromJsonFactory = _$ProblemDetailsFromJson;
  static const toJsonFactory = _$ProblemDetailsToJson;
  Map<String, dynamic> toJson() => _$ProblemDetailsToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProblemDetails &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.instance, instance) ||
                const DeepCollectionEquality()
                    .equals(other.instance, instance)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(instance) ^
      runtimeType.hashCode;
}

extension $ProblemDetailsExtension on ProblemDetails {
  ProblemDetails copyWith(
      {String? type,
      String? title,
      int? status,
      String? detail,
      String? instance}) {
    return ProblemDetails(
        type: type ?? this.type,
        title: title ?? this.title,
        status: status ?? this.status,
        detail: detail ?? this.detail,
        instance: instance ?? this.instance);
  }
}

@JsonSerializable(explicitToJson: true)
class ProjectDTO {
  ProjectDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.externalId,
  });

  factory ProjectDTO.fromJson(Map<String, dynamic> json) =>
      _$ProjectDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'externalId')
  final int? externalId;
  static const fromJsonFactory = _$ProjectDTOFromJson;
  static const toJsonFactory = _$ProjectDTOToJson;
  Map<String, dynamic> toJson() => _$ProjectDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProjectDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.externalId, externalId) ||
                const DeepCollectionEquality()
                    .equals(other.externalId, externalId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(externalId) ^
      runtimeType.hashCode;
}

extension $ProjectDTOExtension on ProjectDTO {
  ProjectDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      int? externalId}) {
    return ProjectDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        externalId: externalId ?? this.externalId);
  }
}

@JsonSerializable(explicitToJson: true)
class ProjectDTOPagedResult {
  ProjectDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory ProjectDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$ProjectDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <ProjectDTO>[])
  final List<ProjectDTO>? items;
  static const fromJsonFactory = _$ProjectDTOPagedResultFromJson;
  static const toJsonFactory = _$ProjectDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$ProjectDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProjectDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $ProjectDTOPagedResultExtension on ProjectDTOPagedResult {
  ProjectDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<ProjectDTO>? items}) {
    return ProjectDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class ReminderDTO {
  ReminderDTO({
    this.id,
    this.reminderDate,
    this.code,
    this.serviceName,
    this.vehicle,
  });

  factory ReminderDTO.fromJson(Map<String, dynamic> json) =>
      _$ReminderDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'reminderDate')
  final String? reminderDate;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'serviceName')
  final String? serviceName;
  @JsonKey(name: 'vehicle')
  final String? vehicle;
  static const fromJsonFactory = _$ReminderDTOFromJson;
  static const toJsonFactory = _$ReminderDTOToJson;
  Map<String, dynamic> toJson() => _$ReminderDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReminderDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.reminderDate, reminderDate) ||
                const DeepCollectionEquality()
                    .equals(other.reminderDate, reminderDate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.serviceName, serviceName) ||
                const DeepCollectionEquality()
                    .equals(other.serviceName, serviceName)) &&
            (identical(other.vehicle, vehicle) ||
                const DeepCollectionEquality().equals(other.vehicle, vehicle)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(reminderDate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(serviceName) ^
      const DeepCollectionEquality().hash(vehicle) ^
      runtimeType.hashCode;
}

extension $ReminderDTOExtension on ReminderDTO {
  ReminderDTO copyWith(
      {String? id,
      String? reminderDate,
      String? code,
      String? serviceName,
      String? vehicle}) {
    return ReminderDTO(
        id: id ?? this.id,
        reminderDate: reminderDate ?? this.reminderDate,
        code: code ?? this.code,
        serviceName: serviceName ?? this.serviceName,
        vehicle: vehicle ?? this.vehicle);
  }
}

@JsonSerializable(explicitToJson: true)
class ReminderDTOPagedResult {
  ReminderDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory ReminderDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$ReminderDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <ReminderDTO>[])
  final List<ReminderDTO>? items;
  static const fromJsonFactory = _$ReminderDTOPagedResultFromJson;
  static const toJsonFactory = _$ReminderDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$ReminderDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReminderDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $ReminderDTOPagedResultExtension on ReminderDTOPagedResult {
  ReminderDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<ReminderDTO>? items}) {
    return ReminderDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class ReminderPostDTO {
  ReminderPostDTO({
    this.title,
    this.frecuency,
    this.measureId,
    this.frecuencyPeriod,
    this.period,
    this.kmBeforeReminder,
    this.timeBefore,
    this.periodToReminder,
    required this.serviceId,
    this.userId,
    required this.vehicleId,
  });

  factory ReminderPostDTO.fromJson(Map<String, dynamic> json) =>
      _$ReminderPostDTOFromJson(json);

  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'frecuency')
  final int? frecuency;
  @JsonKey(name: 'measureId')
  final String? measureId;
  @JsonKey(name: 'frecuencyPeriod')
  final int? frecuencyPeriod;
  @JsonKey(
      name: 'period', toJson: periodEnumToJson, fromJson: periodEnumFromJson)
  final enums.PeriodEnum? period;
  @JsonKey(name: 'kmBeforeReminder')
  final String? kmBeforeReminder;
  @JsonKey(name: 'timeBefore')
  final int? timeBefore;
  @JsonKey(
      name: 'periodToReminder',
      toJson: periodEnumToJson,
      fromJson: periodEnumFromJson)
  final enums.PeriodEnum? periodToReminder;
  @JsonKey(name: 'serviceId')
  final String serviceId;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'vehicleId')
  final String vehicleId;
  static const fromJsonFactory = _$ReminderPostDTOFromJson;
  static const toJsonFactory = _$ReminderPostDTOToJson;
  Map<String, dynamic> toJson() => _$ReminderPostDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReminderPostDTO &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.frecuency, frecuency) ||
                const DeepCollectionEquality()
                    .equals(other.frecuency, frecuency)) &&
            (identical(other.measureId, measureId) ||
                const DeepCollectionEquality()
                    .equals(other.measureId, measureId)) &&
            (identical(other.frecuencyPeriod, frecuencyPeriod) ||
                const DeepCollectionEquality()
                    .equals(other.frecuencyPeriod, frecuencyPeriod)) &&
            (identical(other.period, period) ||
                const DeepCollectionEquality().equals(other.period, period)) &&
            (identical(other.kmBeforeReminder, kmBeforeReminder) ||
                const DeepCollectionEquality()
                    .equals(other.kmBeforeReminder, kmBeforeReminder)) &&
            (identical(other.timeBefore, timeBefore) ||
                const DeepCollectionEquality()
                    .equals(other.timeBefore, timeBefore)) &&
            (identical(other.periodToReminder, periodToReminder) ||
                const DeepCollectionEquality()
                    .equals(other.periodToReminder, periodToReminder)) &&
            (identical(other.serviceId, serviceId) ||
                const DeepCollectionEquality()
                    .equals(other.serviceId, serviceId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleId, vehicleId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(frecuency) ^
      const DeepCollectionEquality().hash(measureId) ^
      const DeepCollectionEquality().hash(frecuencyPeriod) ^
      const DeepCollectionEquality().hash(period) ^
      const DeepCollectionEquality().hash(kmBeforeReminder) ^
      const DeepCollectionEquality().hash(timeBefore) ^
      const DeepCollectionEquality().hash(periodToReminder) ^
      const DeepCollectionEquality().hash(serviceId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $ReminderPostDTOExtension on ReminderPostDTO {
  ReminderPostDTO copyWith(
      {String? title,
      int? frecuency,
      String? measureId,
      int? frecuencyPeriod,
      enums.PeriodEnum? period,
      String? kmBeforeReminder,
      int? timeBefore,
      enums.PeriodEnum? periodToReminder,
      String? serviceId,
      String? userId,
      String? vehicleId}) {
    return ReminderPostDTO(
        title: title ?? this.title,
        frecuency: frecuency ?? this.frecuency,
        measureId: measureId ?? this.measureId,
        frecuencyPeriod: frecuencyPeriod ?? this.frecuencyPeriod,
        period: period ?? this.period,
        kmBeforeReminder: kmBeforeReminder ?? this.kmBeforeReminder,
        timeBefore: timeBefore ?? this.timeBefore,
        periodToReminder: periodToReminder ?? this.periodToReminder,
        serviceId: serviceId ?? this.serviceId,
        userId: userId ?? this.userId,
        vehicleId: vehicleId ?? this.vehicleId);
  }
}

@JsonSerializable(explicitToJson: true)
class ResetPasswordModel {
  ResetPasswordModel({
    required this.password,
    required this.confirmPassword,
    required this.email,
    required this.token,
  });

  factory ResetPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordModelFromJson(json);

  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'confirmPassword')
  final String confirmPassword;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'token')
  final String token;
  static const fromJsonFactory = _$ResetPasswordModelFromJson;
  static const toJsonFactory = _$ResetPasswordModelToJson;
  Map<String, dynamic> toJson() => _$ResetPasswordModelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResetPasswordModel &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(token) ^
      runtimeType.hashCode;
}

extension $ResetPasswordModelExtension on ResetPasswordModel {
  ResetPasswordModel copyWith(
      {String? password,
      String? confirmPassword,
      String? email,
      String? token}) {
    return ResetPasswordModel(
        password: password ?? this.password,
        confirmPassword: confirmPassword ?? this.confirmPassword,
        email: email ?? this.email,
        token: token ?? this.token);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleDTO {
  RoleDTO({
    this.id,
    this.name,
    this.active,
  });

  factory RoleDTO.fromJson(Map<String, dynamic> json) =>
      _$RoleDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'active')
  final bool? active;
  static const fromJsonFactory = _$RoleDTOFromJson;
  static const toJsonFactory = _$RoleDTOToJson;
  Map<String, dynamic> toJson() => _$RoleDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(active) ^
      runtimeType.hashCode;
}

extension $RoleDTOExtension on RoleDTO {
  RoleDTO copyWith({String? id, String? name, bool? active}) {
    return RoleDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        active: active ?? this.active);
  }
}

@JsonSerializable(explicitToJson: true)
class RoleDTOPagedResult {
  RoleDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory RoleDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$RoleDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <RoleDTO>[])
  final List<RoleDTO>? items;
  static const fromJsonFactory = _$RoleDTOPagedResultFromJson;
  static const toJsonFactory = _$RoleDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$RoleDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $RoleDTOPagedResultExtension on RoleDTOPagedResult {
  RoleDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<RoleDTO>? items}) {
    return RoleDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class SelectDTO {
  SelectDTO({
    this.key,
    this.value,
  });

  factory SelectDTO.fromJson(Map<String, dynamic> json) =>
      _$SelectDTOFromJson(json);

  @JsonKey(name: 'key')
  final String? key;
  @JsonKey(name: 'value')
  final String? value;
  static const fromJsonFactory = _$SelectDTOFromJson;
  static const toJsonFactory = _$SelectDTOToJson;
  Map<String, dynamic> toJson() => _$SelectDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectDTO &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $SelectDTOExtension on SelectDTO {
  SelectDTO copyWith({String? key, String? value}) {
    return SelectDTO(key: key ?? this.key, value: value ?? this.value);
  }
}

@JsonSerializable(explicitToJson: true)
class ServiceDTO {
  ServiceDTO({
    this.id,
    this.name,
    this.code,
    this.description,
  });

  factory ServiceDTO.fromJson(Map<String, dynamic> json) =>
      _$ServiceDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$ServiceDTOFromJson;
  static const toJsonFactory = _$ServiceDTOToJson;
  Map<String, dynamic> toJson() => _$ServiceDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServiceDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $ServiceDTOExtension on ServiceDTO {
  ServiceDTO copyWith(
      {String? id, String? name, String? code, String? description}) {
    return ServiceDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class ServiceDTOPagedResult {
  ServiceDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory ServiceDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$ServiceDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <ServiceDTO>[])
  final List<ServiceDTO>? items;
  static const fromJsonFactory = _$ServiceDTOPagedResultFromJson;
  static const toJsonFactory = _$ServiceDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$ServiceDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServiceDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $ServiceDTOPagedResultExtension on ServiceDTOPagedResult {
  ServiceDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<ServiceDTO>? items}) {
    return ServiceDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class TimeSpan {
  TimeSpan({
    this.ticks,
    this.days,
    this.hours,
    this.milliseconds,
    this.microseconds,
    this.nanoseconds,
    this.minutes,
    this.seconds,
    this.totalDays,
    this.totalHours,
    this.totalMilliseconds,
    this.totalMicroseconds,
    this.totalNanoseconds,
    this.totalMinutes,
    this.totalSeconds,
  });

  factory TimeSpan.fromJson(Map<String, dynamic> json) =>
      _$TimeSpanFromJson(json);

  @JsonKey(name: 'ticks')
  final num? ticks;
  @JsonKey(name: 'days')
  final int? days;
  @JsonKey(name: 'hours')
  final int? hours;
  @JsonKey(name: 'milliseconds')
  final int? milliseconds;
  @JsonKey(name: 'microseconds')
  final int? microseconds;
  @JsonKey(name: 'nanoseconds')
  final int? nanoseconds;
  @JsonKey(name: 'minutes')
  final int? minutes;
  @JsonKey(name: 'seconds')
  final int? seconds;
  @JsonKey(name: 'totalDays')
  final double? totalDays;
  @JsonKey(name: 'totalHours')
  final double? totalHours;
  @JsonKey(name: 'totalMilliseconds')
  final double? totalMilliseconds;
  @JsonKey(name: 'totalMicroseconds')
  final double? totalMicroseconds;
  @JsonKey(name: 'totalNanoseconds')
  final double? totalNanoseconds;
  @JsonKey(name: 'totalMinutes')
  final double? totalMinutes;
  @JsonKey(name: 'totalSeconds')
  final double? totalSeconds;
  static const fromJsonFactory = _$TimeSpanFromJson;
  static const toJsonFactory = _$TimeSpanToJson;
  Map<String, dynamic> toJson() => _$TimeSpanToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimeSpan &&
            (identical(other.ticks, ticks) ||
                const DeepCollectionEquality().equals(other.ticks, ticks)) &&
            (identical(other.days, days) ||
                const DeepCollectionEquality().equals(other.days, days)) &&
            (identical(other.hours, hours) ||
                const DeepCollectionEquality().equals(other.hours, hours)) &&
            (identical(other.milliseconds, milliseconds) ||
                const DeepCollectionEquality()
                    .equals(other.milliseconds, milliseconds)) &&
            (identical(other.microseconds, microseconds) ||
                const DeepCollectionEquality()
                    .equals(other.microseconds, microseconds)) &&
            (identical(other.nanoseconds, nanoseconds) ||
                const DeepCollectionEquality()
                    .equals(other.nanoseconds, nanoseconds)) &&
            (identical(other.minutes, minutes) ||
                const DeepCollectionEquality()
                    .equals(other.minutes, minutes)) &&
            (identical(other.seconds, seconds) ||
                const DeepCollectionEquality()
                    .equals(other.seconds, seconds)) &&
            (identical(other.totalDays, totalDays) ||
                const DeepCollectionEquality()
                    .equals(other.totalDays, totalDays)) &&
            (identical(other.totalHours, totalHours) ||
                const DeepCollectionEquality()
                    .equals(other.totalHours, totalHours)) &&
            (identical(other.totalMilliseconds, totalMilliseconds) ||
                const DeepCollectionEquality()
                    .equals(other.totalMilliseconds, totalMilliseconds)) &&
            (identical(other.totalMicroseconds, totalMicroseconds) ||
                const DeepCollectionEquality()
                    .equals(other.totalMicroseconds, totalMicroseconds)) &&
            (identical(other.totalNanoseconds, totalNanoseconds) ||
                const DeepCollectionEquality()
                    .equals(other.totalNanoseconds, totalNanoseconds)) &&
            (identical(other.totalMinutes, totalMinutes) ||
                const DeepCollectionEquality()
                    .equals(other.totalMinutes, totalMinutes)) &&
            (identical(other.totalSeconds, totalSeconds) ||
                const DeepCollectionEquality()
                    .equals(other.totalSeconds, totalSeconds)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(ticks) ^
      const DeepCollectionEquality().hash(days) ^
      const DeepCollectionEquality().hash(hours) ^
      const DeepCollectionEquality().hash(milliseconds) ^
      const DeepCollectionEquality().hash(microseconds) ^
      const DeepCollectionEquality().hash(nanoseconds) ^
      const DeepCollectionEquality().hash(minutes) ^
      const DeepCollectionEquality().hash(seconds) ^
      const DeepCollectionEquality().hash(totalDays) ^
      const DeepCollectionEquality().hash(totalHours) ^
      const DeepCollectionEquality().hash(totalMilliseconds) ^
      const DeepCollectionEquality().hash(totalMicroseconds) ^
      const DeepCollectionEquality().hash(totalNanoseconds) ^
      const DeepCollectionEquality().hash(totalMinutes) ^
      const DeepCollectionEquality().hash(totalSeconds) ^
      runtimeType.hashCode;
}

extension $TimeSpanExtension on TimeSpan {
  TimeSpan copyWith(
      {num? ticks,
      int? days,
      int? hours,
      int? milliseconds,
      int? microseconds,
      int? nanoseconds,
      int? minutes,
      int? seconds,
      double? totalDays,
      double? totalHours,
      double? totalMilliseconds,
      double? totalMicroseconds,
      double? totalNanoseconds,
      double? totalMinutes,
      double? totalSeconds}) {
    return TimeSpan(
        ticks: ticks ?? this.ticks,
        days: days ?? this.days,
        hours: hours ?? this.hours,
        milliseconds: milliseconds ?? this.milliseconds,
        microseconds: microseconds ?? this.microseconds,
        nanoseconds: nanoseconds ?? this.nanoseconds,
        minutes: minutes ?? this.minutes,
        seconds: seconds ?? this.seconds,
        totalDays: totalDays ?? this.totalDays,
        totalHours: totalHours ?? this.totalHours,
        totalMilliseconds: totalMilliseconds ?? this.totalMilliseconds,
        totalMicroseconds: totalMicroseconds ?? this.totalMicroseconds,
        totalNanoseconds: totalNanoseconds ?? this.totalNanoseconds,
        totalMinutes: totalMinutes ?? this.totalMinutes,
        totalSeconds: totalSeconds ?? this.totalSeconds);
  }
}

@JsonSerializable(explicitToJson: true)
class UserPostDTO {
  UserPostDTO({
    required this.email,
    required this.password,
    this.firstName,
    this.lastName,
    this.roleName,
  });

  factory UserPostDTO.fromJson(Map<String, dynamic> json) =>
      _$UserPostDTOFromJson(json);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'firstName')
  final String? firstName;
  @JsonKey(name: 'lastName')
  final String? lastName;
  @JsonKey(name: 'roleName')
  final String? roleName;
  static const fromJsonFactory = _$UserPostDTOFromJson;
  static const toJsonFactory = _$UserPostDTOToJson;
  Map<String, dynamic> toJson() => _$UserPostDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserPostDTO &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.roleName, roleName) ||
                const DeepCollectionEquality()
                    .equals(other.roleName, roleName)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(roleName) ^
      runtimeType.hashCode;
}

extension $UserPostDTOExtension on UserPostDTO {
  UserPostDTO copyWith(
      {String? email,
      String? password,
      String? firstName,
      String? lastName,
      String? roleName}) {
    return UserPostDTO(
        email: email ?? this.email,
        password: password ?? this.password,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        roleName: roleName ?? this.roleName);
  }
}

@JsonSerializable(explicitToJson: true)
class UserPutDTO {
  UserPutDTO({
    this.imageFile,
    this.name,
    required this.firstName,
    required this.lastName,
    this.url,
    this.countryCode,
    this.titleAbbreviation,
    this.gender,
    required this.phone,
    this.country,
    this.city,
    this.address,
    this.birthDate,
    this.costPerAppointment,
  });

  factory UserPutDTO.fromJson(Map<String, dynamic> json) =>
      _$UserPutDTOFromJson(json);

  @JsonKey(name: 'imageFile')
  final String? imageFile;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'lastName')
  final String lastName;
  @JsonKey(name: 'url')
  final String? url;
  @JsonKey(name: 'countryCode')
  final String? countryCode;
  @JsonKey(name: 'titleAbbreviation')
  final String? titleAbbreviation;
  @JsonKey(
      name: 'gender', toJson: genderEnumToJson, fromJson: genderEnumFromJson)
  final enums.GenderEnum? gender;
  @JsonKey(name: 'phone')
  final String phone;
  @JsonKey(name: 'country')
  final String? country;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'birthDate')
  final DateTime? birthDate;
  @JsonKey(name: 'costPerAppointment')
  final double? costPerAppointment;
  static const fromJsonFactory = _$UserPutDTOFromJson;
  static const toJsonFactory = _$UserPutDTOToJson;
  Map<String, dynamic> toJson() => _$UserPutDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserPutDTO &&
            (identical(other.imageFile, imageFile) ||
                const DeepCollectionEquality()
                    .equals(other.imageFile, imageFile)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.titleAbbreviation, titleAbbreviation) ||
                const DeepCollectionEquality()
                    .equals(other.titleAbbreviation, titleAbbreviation)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.costPerAppointment, costPerAppointment) ||
                const DeepCollectionEquality()
                    .equals(other.costPerAppointment, costPerAppointment)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(imageFile) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(titleAbbreviation) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(costPerAppointment) ^
      runtimeType.hashCode;
}

extension $UserPutDTOExtension on UserPutDTO {
  UserPutDTO copyWith(
      {String? imageFile,
      String? name,
      String? firstName,
      String? lastName,
      String? url,
      String? countryCode,
      String? titleAbbreviation,
      enums.GenderEnum? gender,
      String? phone,
      String? country,
      String? city,
      String? address,
      DateTime? birthDate,
      double? costPerAppointment}) {
    return UserPutDTO(
        imageFile: imageFile ?? this.imageFile,
        name: name ?? this.name,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        url: url ?? this.url,
        countryCode: countryCode ?? this.countryCode,
        titleAbbreviation: titleAbbreviation ?? this.titleAbbreviation,
        gender: gender ?? this.gender,
        phone: phone ?? this.phone,
        country: country ?? this.country,
        city: city ?? this.city,
        address: address ?? this.address,
        birthDate: birthDate ?? this.birthDate,
        costPerAppointment: costPerAppointment ?? this.costPerAppointment);
  }
}

@JsonSerializable(explicitToJson: true)
class UserVehicleDTO {
  UserVehicleDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.externalId,
    this.userId,
    this.vehicleId,
  });

  factory UserVehicleDTO.fromJson(Map<String, dynamic> json) =>
      _$UserVehicleDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'externalId')
  final String? externalId;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'vehicleId')
  final String? vehicleId;
  static const fromJsonFactory = _$UserVehicleDTOFromJson;
  static const toJsonFactory = _$UserVehicleDTOToJson;
  Map<String, dynamic> toJson() => _$UserVehicleDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserVehicleDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.externalId, externalId) ||
                const DeepCollectionEquality()
                    .equals(other.externalId, externalId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.vehicleId, vehicleId) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleId, vehicleId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(externalId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(vehicleId) ^
      runtimeType.hashCode;
}

extension $UserVehicleDTOExtension on UserVehicleDTO {
  UserVehicleDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      String? externalId,
      String? userId,
      String? vehicleId}) {
    return UserVehicleDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        externalId: externalId ?? this.externalId,
        userId: userId ?? this.userId,
        vehicleId: vehicleId ?? this.vehicleId);
  }
}

@JsonSerializable(explicitToJson: true)
class UserVehicleDTOPagedResult {
  UserVehicleDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory UserVehicleDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$UserVehicleDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <UserVehicleDTO>[])
  final List<UserVehicleDTO>? items;
  static const fromJsonFactory = _$UserVehicleDTOPagedResultFromJson;
  static const toJsonFactory = _$UserVehicleDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$UserVehicleDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserVehicleDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $UserVehicleDTOPagedResultExtension on UserVehicleDTOPagedResult {
  UserVehicleDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<UserVehicleDTO>? items}) {
    return UserVehicleDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleDTO {
  VehicleDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    required this.vin,
    required this.machineId,
    this.economicNumber,
    this.assignedId,
    this.brandId,
    this.modelId,
    this.modelYear,
    this.engineId,
    this.policyId,
    this.incisoId,
    this.packagePolicyId,
    this.measureId,
    this.fuelMeasureId,
    this.fuelTypeId,
    this.photographs,
    this.bill,
    this.pedimento,
    this.placas,
    this.drillRigId,
    this.documentId,
    this.vehicleTypeId,
    this.companyId,
  });

  factory VehicleDTO.fromJson(Map<String, dynamic> json) =>
      _$VehicleDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'vin')
  final String vin;
  @JsonKey(name: 'machineId')
  final String machineId;
  @JsonKey(name: 'economicNumber')
  final String? economicNumber;
  @JsonKey(name: 'assignedId')
  final String? assignedId;
  @JsonKey(name: 'brandId')
  final String? brandId;
  @JsonKey(name: 'modelId')
  final String? modelId;
  @JsonKey(name: 'modelYear')
  final int? modelYear;
  @JsonKey(name: 'engineId')
  final String? engineId;
  @JsonKey(name: 'policyId')
  final String? policyId;
  @JsonKey(name: 'incisoId')
  final String? incisoId;
  @JsonKey(name: 'packagePolicyId')
  final String? packagePolicyId;
  @JsonKey(name: 'measureId')
  final String? measureId;
  @JsonKey(name: 'fuelMeasureId')
  final String? fuelMeasureId;
  @JsonKey(name: 'fuelTypeId')
  final String? fuelTypeId;
  @JsonKey(name: 'photographs', defaultValue: <ImageDTO>[])
  final List<ImageDTO>? photographs;
  @JsonKey(name: 'bill')
  final DocumentDTO? bill;
  @JsonKey(name: 'pedimento')
  final DocumentDTO? pedimento;
  @JsonKey(name: 'placas')
  final String? placas;
  @JsonKey(name: 'drillRigId')
  final int? drillRigId;
  @JsonKey(name: 'documentId')
  final String? documentId;
  @JsonKey(name: 'vehicleTypeId')
  final String? vehicleTypeId;
  @JsonKey(name: 'companyId')
  final String? companyId;
  static const fromJsonFactory = _$VehicleDTOFromJson;
  static const toJsonFactory = _$VehicleDTOToJson;
  Map<String, dynamic> toJson() => _$VehicleDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehicleDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.vin, vin) ||
                const DeepCollectionEquality().equals(other.vin, vin)) &&
            (identical(other.machineId, machineId) ||
                const DeepCollectionEquality()
                    .equals(other.machineId, machineId)) &&
            (identical(other.economicNumber, economicNumber) ||
                const DeepCollectionEquality()
                    .equals(other.economicNumber, economicNumber)) &&
            (identical(other.assignedId, assignedId) ||
                const DeepCollectionEquality()
                    .equals(other.assignedId, assignedId)) &&
            (identical(other.brandId, brandId) ||
                const DeepCollectionEquality()
                    .equals(other.brandId, brandId)) &&
            (identical(other.modelId, modelId) ||
                const DeepCollectionEquality()
                    .equals(other.modelId, modelId)) &&
            (identical(other.modelYear, modelYear) ||
                const DeepCollectionEquality()
                    .equals(other.modelYear, modelYear)) &&
            (identical(other.engineId, engineId) ||
                const DeepCollectionEquality()
                    .equals(other.engineId, engineId)) &&
            (identical(other.policyId, policyId) ||
                const DeepCollectionEquality()
                    .equals(other.policyId, policyId)) &&
            (identical(other.incisoId, incisoId) ||
                const DeepCollectionEquality()
                    .equals(other.incisoId, incisoId)) &&
            (identical(other.packagePolicyId, packagePolicyId) ||
                const DeepCollectionEquality()
                    .equals(other.packagePolicyId, packagePolicyId)) &&
            (identical(other.measureId, measureId) ||
                const DeepCollectionEquality()
                    .equals(other.measureId, measureId)) &&
            (identical(other.fuelMeasureId, fuelMeasureId) ||
                const DeepCollectionEquality()
                    .equals(other.fuelMeasureId, fuelMeasureId)) &&
            (identical(other.fuelTypeId, fuelTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.fuelTypeId, fuelTypeId)) &&
            (identical(other.photographs, photographs) ||
                const DeepCollectionEquality()
                    .equals(other.photographs, photographs)) &&
            (identical(other.bill, bill) ||
                const DeepCollectionEquality().equals(other.bill, bill)) &&
            (identical(other.pedimento, pedimento) ||
                const DeepCollectionEquality()
                    .equals(other.pedimento, pedimento)) &&
            (identical(other.placas, placas) ||
                const DeepCollectionEquality().equals(other.placas, placas)) &&
            (identical(other.drillRigId, drillRigId) ||
                const DeepCollectionEquality()
                    .equals(other.drillRigId, drillRigId)) &&
            (identical(other.documentId, documentId) ||
                const DeepCollectionEquality()
                    .equals(other.documentId, documentId)) &&
            (identical(other.vehicleTypeId, vehicleTypeId) ||
                const DeepCollectionEquality().equals(other.vehicleTypeId, vehicleTypeId)) &&
            (identical(other.companyId, companyId) || const DeepCollectionEquality().equals(other.companyId, companyId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(vin) ^
      const DeepCollectionEquality().hash(machineId) ^
      const DeepCollectionEquality().hash(economicNumber) ^
      const DeepCollectionEquality().hash(assignedId) ^
      const DeepCollectionEquality().hash(brandId) ^
      const DeepCollectionEquality().hash(modelId) ^
      const DeepCollectionEquality().hash(modelYear) ^
      const DeepCollectionEquality().hash(engineId) ^
      const DeepCollectionEquality().hash(policyId) ^
      const DeepCollectionEquality().hash(incisoId) ^
      const DeepCollectionEquality().hash(packagePolicyId) ^
      const DeepCollectionEquality().hash(measureId) ^
      const DeepCollectionEquality().hash(fuelMeasureId) ^
      const DeepCollectionEquality().hash(fuelTypeId) ^
      const DeepCollectionEquality().hash(photographs) ^
      const DeepCollectionEquality().hash(bill) ^
      const DeepCollectionEquality().hash(pedimento) ^
      const DeepCollectionEquality().hash(placas) ^
      const DeepCollectionEquality().hash(drillRigId) ^
      const DeepCollectionEquality().hash(documentId) ^
      const DeepCollectionEquality().hash(vehicleTypeId) ^
      const DeepCollectionEquality().hash(companyId) ^
      runtimeType.hashCode;
}

extension $VehicleDTOExtension on VehicleDTO {
  VehicleDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      String? vin,
      String? machineId,
      String? economicNumber,
      String? assignedId,
      String? brandId,
      String? modelId,
      int? modelYear,
      String? engineId,
      String? policyId,
      String? incisoId,
      String? packagePolicyId,
      String? measureId,
      String? fuelMeasureId,
      String? fuelTypeId,
      List<ImageDTO>? photographs,
      DocumentDTO? bill,
      DocumentDTO? pedimento,
      String? placas,
      int? drillRigId,
      String? documentId,
      String? vehicleTypeId,
      String? companyId}) {
    return VehicleDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        vin: vin ?? this.vin,
        machineId: machineId ?? this.machineId,
        economicNumber: economicNumber ?? this.economicNumber,
        assignedId: assignedId ?? this.assignedId,
        brandId: brandId ?? this.brandId,
        modelId: modelId ?? this.modelId,
        modelYear: modelYear ?? this.modelYear,
        engineId: engineId ?? this.engineId,
        policyId: policyId ?? this.policyId,
        incisoId: incisoId ?? this.incisoId,
        packagePolicyId: packagePolicyId ?? this.packagePolicyId,
        measureId: measureId ?? this.measureId,
        fuelMeasureId: fuelMeasureId ?? this.fuelMeasureId,
        fuelTypeId: fuelTypeId ?? this.fuelTypeId,
        photographs: photographs ?? this.photographs,
        bill: bill ?? this.bill,
        pedimento: pedimento ?? this.pedimento,
        placas: placas ?? this.placas,
        drillRigId: drillRigId ?? this.drillRigId,
        documentId: documentId ?? this.documentId,
        vehicleTypeId: vehicleTypeId ?? this.vehicleTypeId,
        companyId: companyId ?? this.companyId);
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleDTOPagedResult {
  VehicleDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory VehicleDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$VehicleDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <VehicleDTO>[])
  final List<VehicleDTO>? items;
  static const fromJsonFactory = _$VehicleDTOPagedResultFromJson;
  static const toJsonFactory = _$VehicleDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$VehicleDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehicleDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $VehicleDTOPagedResultExtension on VehicleDTOPagedResult {
  VehicleDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<VehicleDTO>? items}) {
    return VehicleDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleDetailDTO {
  VehicleDetailDTO({
    this.id,
    this.description,
    this.economicNumber,
    this.vin,
    this.placas,
    this.status,
    this.category,
    this.machine,
    this.project,
    this.company,
    this.assignment,
    this.performance,
    this.statistics,
    this.fuelLoads,
    this.listMaintenances,
    this.photographs,
    this.bill,
    this.pedimento,
    this.listReminders,
    this.active,
  });

  factory VehicleDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$VehicleDetailDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'economicNumber')
  final String? economicNumber;
  @JsonKey(name: 'vin')
  final String? vin;
  @JsonKey(name: 'placas')
  final String? placas;
  @JsonKey(
      name: 'status',
      toJson: vehicleStatusEnumToJson,
      fromJson: vehicleStatusEnumFromJson)
  final enums.VehicleStatusEnum? status;
  @JsonKey(name: 'category')
  final String? category;
  @JsonKey(name: 'machine')
  final String? machine;
  @JsonKey(name: 'project')
  final String? project;
  @JsonKey(name: 'company')
  final String? company;
  @JsonKey(name: 'assignment')
  final String? assignment;
  @JsonKey(name: 'performance', defaultValue: <PerformanceDTO>[])
  final List<PerformanceDTO>? performance;
  @JsonKey(name: 'statistics', defaultValue: <VehicleStatisticsDTO>[])
  final List<VehicleStatisticsDTO>? statistics;
  @JsonKey(name: 'fuelLoads')
  final FuelLoadDTOPagedResult? fuelLoads;
  @JsonKey(name: 'listMaintenances')
  final MaintenanceDTOPagedResult? listMaintenances;
  @JsonKey(name: 'photographs', defaultValue: <ImageDTO>[])
  final List<ImageDTO>? photographs;
  @JsonKey(name: 'bill')
  final DocumentDTO? bill;
  @JsonKey(name: 'pedimento')
  final DocumentDTO? pedimento;
  @JsonKey(name: 'listReminders')
  final ReminderDTOPagedResult? listReminders;
  @JsonKey(name: 'active')
  final bool? active;
  static const fromJsonFactory = _$VehicleDetailDTOFromJson;
  static const toJsonFactory = _$VehicleDetailDTOToJson;
  Map<String, dynamic> toJson() => _$VehicleDetailDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehicleDetailDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.economicNumber, economicNumber) ||
                const DeepCollectionEquality()
                    .equals(other.economicNumber, economicNumber)) &&
            (identical(other.vin, vin) ||
                const DeepCollectionEquality().equals(other.vin, vin)) &&
            (identical(other.placas, placas) ||
                const DeepCollectionEquality().equals(other.placas, placas)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.machine, machine) ||
                const DeepCollectionEquality()
                    .equals(other.machine, machine)) &&
            (identical(other.project, project) ||
                const DeepCollectionEquality()
                    .equals(other.project, project)) &&
            (identical(other.company, company) ||
                const DeepCollectionEquality()
                    .equals(other.company, company)) &&
            (identical(other.assignment, assignment) ||
                const DeepCollectionEquality()
                    .equals(other.assignment, assignment)) &&
            (identical(other.performance, performance) ||
                const DeepCollectionEquality()
                    .equals(other.performance, performance)) &&
            (identical(other.statistics, statistics) ||
                const DeepCollectionEquality()
                    .equals(other.statistics, statistics)) &&
            (identical(other.fuelLoads, fuelLoads) ||
                const DeepCollectionEquality()
                    .equals(other.fuelLoads, fuelLoads)) &&
            (identical(other.listMaintenances, listMaintenances) ||
                const DeepCollectionEquality()
                    .equals(other.listMaintenances, listMaintenances)) &&
            (identical(other.photographs, photographs) ||
                const DeepCollectionEquality()
                    .equals(other.photographs, photographs)) &&
            (identical(other.bill, bill) ||
                const DeepCollectionEquality().equals(other.bill, bill)) &&
            (identical(other.pedimento, pedimento) ||
                const DeepCollectionEquality()
                    .equals(other.pedimento, pedimento)) &&
            (identical(other.listReminders, listReminders) ||
                const DeepCollectionEquality()
                    .equals(other.listReminders, listReminders)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(economicNumber) ^
      const DeepCollectionEquality().hash(vin) ^
      const DeepCollectionEquality().hash(placas) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(machine) ^
      const DeepCollectionEquality().hash(project) ^
      const DeepCollectionEquality().hash(company) ^
      const DeepCollectionEquality().hash(assignment) ^
      const DeepCollectionEquality().hash(performance) ^
      const DeepCollectionEquality().hash(statistics) ^
      const DeepCollectionEquality().hash(fuelLoads) ^
      const DeepCollectionEquality().hash(listMaintenances) ^
      const DeepCollectionEquality().hash(photographs) ^
      const DeepCollectionEquality().hash(bill) ^
      const DeepCollectionEquality().hash(pedimento) ^
      const DeepCollectionEquality().hash(listReminders) ^
      const DeepCollectionEquality().hash(active) ^
      runtimeType.hashCode;
}

extension $VehicleDetailDTOExtension on VehicleDetailDTO {
  VehicleDetailDTO copyWith(
      {String? id,
      String? description,
      String? economicNumber,
      String? vin,
      String? placas,
      enums.VehicleStatusEnum? status,
      String? category,
      String? machine,
      String? project,
      String? company,
      String? assignment,
      List<PerformanceDTO>? performance,
      List<VehicleStatisticsDTO>? statistics,
      FuelLoadDTOPagedResult? fuelLoads,
      MaintenanceDTOPagedResult? listMaintenances,
      List<ImageDTO>? photographs,
      DocumentDTO? bill,
      DocumentDTO? pedimento,
      ReminderDTOPagedResult? listReminders,
      bool? active}) {
    return VehicleDetailDTO(
        id: id ?? this.id,
        description: description ?? this.description,
        economicNumber: economicNumber ?? this.economicNumber,
        vin: vin ?? this.vin,
        placas: placas ?? this.placas,
        status: status ?? this.status,
        category: category ?? this.category,
        machine: machine ?? this.machine,
        project: project ?? this.project,
        company: company ?? this.company,
        assignment: assignment ?? this.assignment,
        performance: performance ?? this.performance,
        statistics: statistics ?? this.statistics,
        fuelLoads: fuelLoads ?? this.fuelLoads,
        listMaintenances: listMaintenances ?? this.listMaintenances,
        photographs: photographs ?? this.photographs,
        bill: bill ?? this.bill,
        pedimento: pedimento ?? this.pedimento,
        listReminders: listReminders ?? this.listReminders,
        active: active ?? this.active);
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleFormDTO {
  VehicleFormDTO({
    this.assignedId,
    this.brandId,
    this.modelId,
    this.modelYear,
    this.engineId,
    this.placas,
    this.drillRigId,
    this.policyId,
    this.incisoId,
    this.packagePolicyId,
    this.measureId,
    this.fuelMeasureId,
    this.fuelTypeId,
    this.companyId,
    this.categoryId,
    this.tankSize,
    this.active,
    this.photographsFiles,
    this.billFile,
    this.pedimentoFile,
    this.description,
    this.vin,
    this.machineId,
    this.economicNumber,
    this.photographs,
    this.bill,
    this.pedimento,
  });

  factory VehicleFormDTO.fromJson(Map<String, dynamic> json) =>
      _$VehicleFormDTOFromJson(json);

  @JsonKey(name: 'assignedId')
  final String? assignedId;
  @JsonKey(name: 'brandId')
  final String? brandId;
  @JsonKey(name: 'modelId')
  final String? modelId;
  @JsonKey(name: 'modelYear')
  final int? modelYear;
  @JsonKey(name: 'engineId')
  final String? engineId;
  @JsonKey(name: 'placas')
  final String? placas;
  @JsonKey(name: 'drillRigId')
  final int? drillRigId;
  @JsonKey(name: 'policyId')
  final String? policyId;
  @JsonKey(name: 'incisoId')
  final String? incisoId;
  @JsonKey(name: 'packagePolicyId')
  final String? packagePolicyId;
  @JsonKey(name: 'measureId')
  final String? measureId;
  @JsonKey(name: 'fuelMeasureId')
  final String? fuelMeasureId;
  @JsonKey(name: 'fuelTypeId')
  final String? fuelTypeId;
  @JsonKey(name: 'companyId')
  final String? companyId;
  @JsonKey(name: 'categoryId')
  final String? categoryId;
  @JsonKey(name: 'tankSize')
  final int? tankSize;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'photographsFiles', defaultValue: <String>[])
  final List<String>? photographsFiles;
  @JsonKey(name: 'billFile')
  final String? billFile;
  @JsonKey(name: 'pedimentoFile')
  final String? pedimentoFile;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'vin')
  final String? vin;
  @JsonKey(name: 'machineId')
  final String? machineId;
  @JsonKey(name: 'economicNumber')
  final String? economicNumber;
  @JsonKey(name: 'photographs', defaultValue: <ImageDTO>[])
  final List<ImageDTO>? photographs;
  @JsonKey(name: 'bill')
  final DocumentDTO? bill;
  @JsonKey(name: 'pedimento')
  final DocumentDTO? pedimento;
  static const fromJsonFactory = _$VehicleFormDTOFromJson;
  static const toJsonFactory = _$VehicleFormDTOToJson;
  Map<String, dynamic> toJson() => _$VehicleFormDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehicleFormDTO &&
            (identical(other.assignedId, assignedId) ||
                const DeepCollectionEquality()
                    .equals(other.assignedId, assignedId)) &&
            (identical(other.brandId, brandId) ||
                const DeepCollectionEquality()
                    .equals(other.brandId, brandId)) &&
            (identical(other.modelId, modelId) ||
                const DeepCollectionEquality()
                    .equals(other.modelId, modelId)) &&
            (identical(other.modelYear, modelYear) ||
                const DeepCollectionEquality()
                    .equals(other.modelYear, modelYear)) &&
            (identical(other.engineId, engineId) ||
                const DeepCollectionEquality()
                    .equals(other.engineId, engineId)) &&
            (identical(other.placas, placas) ||
                const DeepCollectionEquality().equals(other.placas, placas)) &&
            (identical(other.drillRigId, drillRigId) ||
                const DeepCollectionEquality()
                    .equals(other.drillRigId, drillRigId)) &&
            (identical(other.policyId, policyId) ||
                const DeepCollectionEquality()
                    .equals(other.policyId, policyId)) &&
            (identical(other.incisoId, incisoId) ||
                const DeepCollectionEquality()
                    .equals(other.incisoId, incisoId)) &&
            (identical(other.packagePolicyId, packagePolicyId) ||
                const DeepCollectionEquality()
                    .equals(other.packagePolicyId, packagePolicyId)) &&
            (identical(other.measureId, measureId) ||
                const DeepCollectionEquality()
                    .equals(other.measureId, measureId)) &&
            (identical(other.fuelMeasureId, fuelMeasureId) ||
                const DeepCollectionEquality()
                    .equals(other.fuelMeasureId, fuelMeasureId)) &&
            (identical(other.fuelTypeId, fuelTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.fuelTypeId, fuelTypeId)) &&
            (identical(other.companyId, companyId) ||
                const DeepCollectionEquality()
                    .equals(other.companyId, companyId)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.tankSize, tankSize) ||
                const DeepCollectionEquality()
                    .equals(other.tankSize, tankSize)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.photographsFiles, photographsFiles) ||
                const DeepCollectionEquality()
                    .equals(other.photographsFiles, photographsFiles)) &&
            (identical(other.billFile, billFile) ||
                const DeepCollectionEquality()
                    .equals(other.billFile, billFile)) &&
            (identical(other.pedimentoFile, pedimentoFile) ||
                const DeepCollectionEquality()
                    .equals(other.pedimentoFile, pedimentoFile)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.vin, vin) ||
                const DeepCollectionEquality().equals(other.vin, vin)) &&
            (identical(other.machineId, machineId) ||
                const DeepCollectionEquality()
                    .equals(other.machineId, machineId)) &&
            (identical(other.economicNumber, economicNumber) || const DeepCollectionEquality().equals(other.economicNumber, economicNumber)) &&
            (identical(other.photographs, photographs) || const DeepCollectionEquality().equals(other.photographs, photographs)) &&
            (identical(other.bill, bill) || const DeepCollectionEquality().equals(other.bill, bill)) &&
            (identical(other.pedimento, pedimento) || const DeepCollectionEquality().equals(other.pedimento, pedimento)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(assignedId) ^
      const DeepCollectionEquality().hash(brandId) ^
      const DeepCollectionEquality().hash(modelId) ^
      const DeepCollectionEquality().hash(modelYear) ^
      const DeepCollectionEquality().hash(engineId) ^
      const DeepCollectionEquality().hash(placas) ^
      const DeepCollectionEquality().hash(drillRigId) ^
      const DeepCollectionEquality().hash(policyId) ^
      const DeepCollectionEquality().hash(incisoId) ^
      const DeepCollectionEquality().hash(packagePolicyId) ^
      const DeepCollectionEquality().hash(measureId) ^
      const DeepCollectionEquality().hash(fuelMeasureId) ^
      const DeepCollectionEquality().hash(fuelTypeId) ^
      const DeepCollectionEquality().hash(companyId) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(tankSize) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(photographsFiles) ^
      const DeepCollectionEquality().hash(billFile) ^
      const DeepCollectionEquality().hash(pedimentoFile) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(vin) ^
      const DeepCollectionEquality().hash(machineId) ^
      const DeepCollectionEquality().hash(economicNumber) ^
      const DeepCollectionEquality().hash(photographs) ^
      const DeepCollectionEquality().hash(bill) ^
      const DeepCollectionEquality().hash(pedimento) ^
      runtimeType.hashCode;
}

extension $VehicleFormDTOExtension on VehicleFormDTO {
  VehicleFormDTO copyWith(
      {String? assignedId,
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
      List<String>? photographsFiles,
      String? billFile,
      String? pedimentoFile,
      String? description,
      String? vin,
      String? machineId,
      String? economicNumber,
      List<ImageDTO>? photographs,
      DocumentDTO? bill,
      DocumentDTO? pedimento}) {
    return VehicleFormDTO(
        assignedId: assignedId ?? this.assignedId,
        brandId: brandId ?? this.brandId,
        modelId: modelId ?? this.modelId,
        modelYear: modelYear ?? this.modelYear,
        engineId: engineId ?? this.engineId,
        placas: placas ?? this.placas,
        drillRigId: drillRigId ?? this.drillRigId,
        policyId: policyId ?? this.policyId,
        incisoId: incisoId ?? this.incisoId,
        packagePolicyId: packagePolicyId ?? this.packagePolicyId,
        measureId: measureId ?? this.measureId,
        fuelMeasureId: fuelMeasureId ?? this.fuelMeasureId,
        fuelTypeId: fuelTypeId ?? this.fuelTypeId,
        companyId: companyId ?? this.companyId,
        categoryId: categoryId ?? this.categoryId,
        tankSize: tankSize ?? this.tankSize,
        active: active ?? this.active,
        photographsFiles: photographsFiles ?? this.photographsFiles,
        billFile: billFile ?? this.billFile,
        pedimentoFile: pedimentoFile ?? this.pedimentoFile,
        description: description ?? this.description,
        vin: vin ?? this.vin,
        machineId: machineId ?? this.machineId,
        economicNumber: economicNumber ?? this.economicNumber,
        photographs: photographs ?? this.photographs,
        bill: bill ?? this.bill,
        pedimento: pedimento ?? this.pedimento);
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleInboxDTO {
  VehicleInboxDTO({
    this.id,
    this.image,
    this.description,
    this.assignedTo,
    this.economicNumber,
    this.vin,
    this.placas,
    this.category,
    this.projectName,
    this.machineId,
    this.companyId,
  });

  factory VehicleInboxDTO.fromJson(Map<String, dynamic> json) =>
      _$VehicleInboxDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'assignedTo')
  final String? assignedTo;
  @JsonKey(name: 'economicNumber')
  final String? economicNumber;
  @JsonKey(name: 'vin')
  final String? vin;
  @JsonKey(name: 'placas')
  final String? placas;
  @JsonKey(name: 'category')
  final String? category;
  @JsonKey(name: 'projectName')
  final String? projectName;
  @JsonKey(name: 'machineId')
  final String? machineId;
  @JsonKey(name: 'companyId')
  final String? companyId;
  static const fromJsonFactory = _$VehicleInboxDTOFromJson;
  static const toJsonFactory = _$VehicleInboxDTOToJson;
  Map<String, dynamic> toJson() => _$VehicleInboxDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehicleInboxDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.assignedTo, assignedTo) ||
                const DeepCollectionEquality()
                    .equals(other.assignedTo, assignedTo)) &&
            (identical(other.economicNumber, economicNumber) ||
                const DeepCollectionEquality()
                    .equals(other.economicNumber, economicNumber)) &&
            (identical(other.vin, vin) ||
                const DeepCollectionEquality().equals(other.vin, vin)) &&
            (identical(other.placas, placas) ||
                const DeepCollectionEquality().equals(other.placas, placas)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.projectName, projectName) ||
                const DeepCollectionEquality()
                    .equals(other.projectName, projectName)) &&
            (identical(other.machineId, machineId) ||
                const DeepCollectionEquality()
                    .equals(other.machineId, machineId)) &&
            (identical(other.companyId, companyId) ||
                const DeepCollectionEquality()
                    .equals(other.companyId, companyId)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(assignedTo) ^
      const DeepCollectionEquality().hash(economicNumber) ^
      const DeepCollectionEquality().hash(vin) ^
      const DeepCollectionEquality().hash(placas) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(projectName) ^
      const DeepCollectionEquality().hash(machineId) ^
      const DeepCollectionEquality().hash(companyId) ^
      runtimeType.hashCode;
}

extension $VehicleInboxDTOExtension on VehicleInboxDTO {
  VehicleInboxDTO copyWith(
      {String? id,
      String? image,
      String? description,
      String? assignedTo,
      String? economicNumber,
      String? vin,
      String? placas,
      String? category,
      String? projectName,
      String? machineId,
      String? companyId}) {
    return VehicleInboxDTO(
        id: id ?? this.id,
        image: image ?? this.image,
        description: description ?? this.description,
        assignedTo: assignedTo ?? this.assignedTo,
        economicNumber: economicNumber ?? this.economicNumber,
        vin: vin ?? this.vin,
        placas: placas ?? this.placas,
        category: category ?? this.category,
        projectName: projectName ?? this.projectName,
        machineId: machineId ?? this.machineId,
        companyId: companyId ?? this.companyId);
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleInboxDTOPagedResult {
  VehicleInboxDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory VehicleInboxDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$VehicleInboxDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <VehicleInboxDTO>[])
  final List<VehicleInboxDTO>? items;
  static const fromJsonFactory = _$VehicleInboxDTOPagedResultFromJson;
  static const toJsonFactory = _$VehicleInboxDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$VehicleInboxDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehicleInboxDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $VehicleInboxDTOPagedResultExtension on VehicleInboxDTOPagedResult {
  VehicleInboxDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<VehicleInboxDTO>? items}) {
    return VehicleInboxDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleNewEditDTO {
  VehicleNewEditDTO({
    this.vehicle,
    this.users,
    this.brands,
    this.categories,
    this.models,
    this.engines,
    this.policies,
    this.incisos,
    this.packagePolicies,
    this.measures,
    this.fuelMeasures,
    this.fuelTypes,
    this.machines,
    this.companies,
  });

  factory VehicleNewEditDTO.fromJson(Map<String, dynamic> json) =>
      _$VehicleNewEditDTOFromJson(json);

  @JsonKey(name: 'vehicle')
  final VehicleFormDTO? vehicle;
  @JsonKey(name: 'users', defaultValue: <SelectDTO>[])
  final List<SelectDTO>? users;
  @JsonKey(name: 'brands', defaultValue: <SelectDTO>[])
  final List<SelectDTO>? brands;
  @JsonKey(name: 'categories', defaultValue: <SelectDTO>[])
  final List<SelectDTO>? categories;
  @JsonKey(name: 'models', defaultValue: <SelectDTO>[])
  final List<SelectDTO>? models;
  @JsonKey(name: 'engines', defaultValue: <SelectDTO>[])
  final List<SelectDTO>? engines;
  @JsonKey(name: 'policies', defaultValue: <SelectDTO>[])
  final List<SelectDTO>? policies;
  @JsonKey(name: 'incisos', defaultValue: <SelectDTO>[])
  final List<SelectDTO>? incisos;
  @JsonKey(name: 'packagePolicies', defaultValue: <SelectDTO>[])
  final List<SelectDTO>? packagePolicies;
  @JsonKey(name: 'measures', defaultValue: <SelectDTO>[])
  final List<SelectDTO>? measures;
  @JsonKey(name: 'fuelMeasures', defaultValue: <SelectDTO>[])
  final List<SelectDTO>? fuelMeasures;
  @JsonKey(name: 'fuelTypes', defaultValue: <SelectDTO>[])
  final List<SelectDTO>? fuelTypes;
  @JsonKey(name: 'machines', defaultValue: <SelectDTO>[])
  final List<SelectDTO>? machines;
  @JsonKey(name: 'companies', defaultValue: <SelectDTO>[])
  final List<SelectDTO>? companies;
  static const fromJsonFactory = _$VehicleNewEditDTOFromJson;
  static const toJsonFactory = _$VehicleNewEditDTOToJson;
  Map<String, dynamic> toJson() => _$VehicleNewEditDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehicleNewEditDTO &&
            (identical(other.vehicle, vehicle) ||
                const DeepCollectionEquality()
                    .equals(other.vehicle, vehicle)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.brands, brands) ||
                const DeepCollectionEquality().equals(other.brands, brands)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.models, models) ||
                const DeepCollectionEquality().equals(other.models, models)) &&
            (identical(other.engines, engines) ||
                const DeepCollectionEquality()
                    .equals(other.engines, engines)) &&
            (identical(other.policies, policies) ||
                const DeepCollectionEquality()
                    .equals(other.policies, policies)) &&
            (identical(other.incisos, incisos) ||
                const DeepCollectionEquality()
                    .equals(other.incisos, incisos)) &&
            (identical(other.packagePolicies, packagePolicies) ||
                const DeepCollectionEquality()
                    .equals(other.packagePolicies, packagePolicies)) &&
            (identical(other.measures, measures) ||
                const DeepCollectionEquality()
                    .equals(other.measures, measures)) &&
            (identical(other.fuelMeasures, fuelMeasures) ||
                const DeepCollectionEquality()
                    .equals(other.fuelMeasures, fuelMeasures)) &&
            (identical(other.fuelTypes, fuelTypes) ||
                const DeepCollectionEquality()
                    .equals(other.fuelTypes, fuelTypes)) &&
            (identical(other.machines, machines) ||
                const DeepCollectionEquality()
                    .equals(other.machines, machines)) &&
            (identical(other.companies, companies) ||
                const DeepCollectionEquality()
                    .equals(other.companies, companies)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(vehicle) ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(brands) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(models) ^
      const DeepCollectionEquality().hash(engines) ^
      const DeepCollectionEquality().hash(policies) ^
      const DeepCollectionEquality().hash(incisos) ^
      const DeepCollectionEquality().hash(packagePolicies) ^
      const DeepCollectionEquality().hash(measures) ^
      const DeepCollectionEquality().hash(fuelMeasures) ^
      const DeepCollectionEquality().hash(fuelTypes) ^
      const DeepCollectionEquality().hash(machines) ^
      const DeepCollectionEquality().hash(companies) ^
      runtimeType.hashCode;
}

extension $VehicleNewEditDTOExtension on VehicleNewEditDTO {
  VehicleNewEditDTO copyWith(
      {VehicleFormDTO? vehicle,
      List<SelectDTO>? users,
      List<SelectDTO>? brands,
      List<SelectDTO>? categories,
      List<SelectDTO>? models,
      List<SelectDTO>? engines,
      List<SelectDTO>? policies,
      List<SelectDTO>? incisos,
      List<SelectDTO>? packagePolicies,
      List<SelectDTO>? measures,
      List<SelectDTO>? fuelMeasures,
      List<SelectDTO>? fuelTypes,
      List<SelectDTO>? machines,
      List<SelectDTO>? companies}) {
    return VehicleNewEditDTO(
        vehicle: vehicle ?? this.vehicle,
        users: users ?? this.users,
        brands: brands ?? this.brands,
        categories: categories ?? this.categories,
        models: models ?? this.models,
        engines: engines ?? this.engines,
        policies: policies ?? this.policies,
        incisos: incisos ?? this.incisos,
        packagePolicies: packagePolicies ?? this.packagePolicies,
        measures: measures ?? this.measures,
        fuelMeasures: fuelMeasures ?? this.fuelMeasures,
        fuelTypes: fuelTypes ?? this.fuelTypes,
        machines: machines ?? this.machines,
        companies: companies ?? this.companies);
  }
}

@JsonSerializable(explicitToJson: true)
class VehiclePostDTO {
  VehiclePostDTO({
    required this.vin,
    required this.machineId,
    required this.description,
    required this.economicNumber,
    this.assignedId,
    this.brandId,
    this.modelId,
    this.modelYear,
    this.engineId,
    this.placas,
    this.drillRigId,
    this.policyId,
    this.incisoId,
    this.packagePolicyId,
    this.measureId,
    this.fuelMeasureId,
    this.fuelTypeId,
    this.companyId,
    this.categoryId,
    this.tankSize,
    this.active,
    this.photographsFiles,
    this.billFile,
    this.pedimentoFile,
  });

  factory VehiclePostDTO.fromJson(Map<String, dynamic> json) =>
      _$VehiclePostDTOFromJson(json);

  @JsonKey(name: 'vin')
  final String vin;
  @JsonKey(name: 'machineId')
  final String machineId;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'economicNumber')
  final String economicNumber;
  @JsonKey(name: 'assignedId')
  final String? assignedId;
  @JsonKey(name: 'brandId')
  final String? brandId;
  @JsonKey(name: 'modelId')
  final String? modelId;
  @JsonKey(name: 'modelYear')
  final int? modelYear;
  @JsonKey(name: 'engineId')
  final String? engineId;
  @JsonKey(name: 'placas')
  final String? placas;
  @JsonKey(name: 'drillRigId')
  final int? drillRigId;
  @JsonKey(name: 'policyId')
  final String? policyId;
  @JsonKey(name: 'incisoId')
  final String? incisoId;
  @JsonKey(name: 'packagePolicyId')
  final String? packagePolicyId;
  @JsonKey(name: 'measureId')
  final String? measureId;
  @JsonKey(name: 'fuelMeasureId')
  final String? fuelMeasureId;
  @JsonKey(name: 'fuelTypeId')
  final String? fuelTypeId;
  @JsonKey(name: 'companyId')
  final String? companyId;
  @JsonKey(name: 'categoryId')
  final String? categoryId;
  @JsonKey(name: 'tankSize')
  final int? tankSize;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'photographsFiles', defaultValue: <String>[])
  final List<String>? photographsFiles;
  @JsonKey(name: 'billFile')
  final String? billFile;
  @JsonKey(name: 'pedimentoFile')
  final String? pedimentoFile;
  static const fromJsonFactory = _$VehiclePostDTOFromJson;
  static const toJsonFactory = _$VehiclePostDTOToJson;
  Map<String, dynamic> toJson() => _$VehiclePostDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehiclePostDTO &&
            (identical(other.vin, vin) ||
                const DeepCollectionEquality().equals(other.vin, vin)) &&
            (identical(other.machineId, machineId) ||
                const DeepCollectionEquality()
                    .equals(other.machineId, machineId)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.economicNumber, economicNumber) ||
                const DeepCollectionEquality()
                    .equals(other.economicNumber, economicNumber)) &&
            (identical(other.assignedId, assignedId) ||
                const DeepCollectionEquality()
                    .equals(other.assignedId, assignedId)) &&
            (identical(other.brandId, brandId) ||
                const DeepCollectionEquality()
                    .equals(other.brandId, brandId)) &&
            (identical(other.modelId, modelId) ||
                const DeepCollectionEquality()
                    .equals(other.modelId, modelId)) &&
            (identical(other.modelYear, modelYear) ||
                const DeepCollectionEquality()
                    .equals(other.modelYear, modelYear)) &&
            (identical(other.engineId, engineId) ||
                const DeepCollectionEquality()
                    .equals(other.engineId, engineId)) &&
            (identical(other.placas, placas) ||
                const DeepCollectionEquality().equals(other.placas, placas)) &&
            (identical(other.drillRigId, drillRigId) ||
                const DeepCollectionEquality()
                    .equals(other.drillRigId, drillRigId)) &&
            (identical(other.policyId, policyId) ||
                const DeepCollectionEquality()
                    .equals(other.policyId, policyId)) &&
            (identical(other.incisoId, incisoId) ||
                const DeepCollectionEquality()
                    .equals(other.incisoId, incisoId)) &&
            (identical(other.packagePolicyId, packagePolicyId) ||
                const DeepCollectionEquality()
                    .equals(other.packagePolicyId, packagePolicyId)) &&
            (identical(other.measureId, measureId) ||
                const DeepCollectionEquality()
                    .equals(other.measureId, measureId)) &&
            (identical(other.fuelMeasureId, fuelMeasureId) ||
                const DeepCollectionEquality()
                    .equals(other.fuelMeasureId, fuelMeasureId)) &&
            (identical(other.fuelTypeId, fuelTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.fuelTypeId, fuelTypeId)) &&
            (identical(other.companyId, companyId) ||
                const DeepCollectionEquality()
                    .equals(other.companyId, companyId)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.tankSize, tankSize) ||
                const DeepCollectionEquality()
                    .equals(other.tankSize, tankSize)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.photographsFiles, photographsFiles) ||
                const DeepCollectionEquality()
                    .equals(other.photographsFiles, photographsFiles)) &&
            (identical(other.billFile, billFile) ||
                const DeepCollectionEquality()
                    .equals(other.billFile, billFile)) &&
            (identical(other.pedimentoFile, pedimentoFile) || const DeepCollectionEquality().equals(other.pedimentoFile, pedimentoFile)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(vin) ^
      const DeepCollectionEquality().hash(machineId) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(economicNumber) ^
      const DeepCollectionEquality().hash(assignedId) ^
      const DeepCollectionEquality().hash(brandId) ^
      const DeepCollectionEquality().hash(modelId) ^
      const DeepCollectionEquality().hash(modelYear) ^
      const DeepCollectionEquality().hash(engineId) ^
      const DeepCollectionEquality().hash(placas) ^
      const DeepCollectionEquality().hash(drillRigId) ^
      const DeepCollectionEquality().hash(policyId) ^
      const DeepCollectionEquality().hash(incisoId) ^
      const DeepCollectionEquality().hash(packagePolicyId) ^
      const DeepCollectionEquality().hash(measureId) ^
      const DeepCollectionEquality().hash(fuelMeasureId) ^
      const DeepCollectionEquality().hash(fuelTypeId) ^
      const DeepCollectionEquality().hash(companyId) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(tankSize) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(photographsFiles) ^
      const DeepCollectionEquality().hash(billFile) ^
      const DeepCollectionEquality().hash(pedimentoFile) ^
      runtimeType.hashCode;
}

extension $VehiclePostDTOExtension on VehiclePostDTO {
  VehiclePostDTO copyWith(
      {String? vin,
      String? machineId,
      String? description,
      String? economicNumber,
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
      List<String>? photographsFiles,
      String? billFile,
      String? pedimentoFile}) {
    return VehiclePostDTO(
        vin: vin ?? this.vin,
        machineId: machineId ?? this.machineId,
        description: description ?? this.description,
        economicNumber: economicNumber ?? this.economicNumber,
        assignedId: assignedId ?? this.assignedId,
        brandId: brandId ?? this.brandId,
        modelId: modelId ?? this.modelId,
        modelYear: modelYear ?? this.modelYear,
        engineId: engineId ?? this.engineId,
        placas: placas ?? this.placas,
        drillRigId: drillRigId ?? this.drillRigId,
        policyId: policyId ?? this.policyId,
        incisoId: incisoId ?? this.incisoId,
        packagePolicyId: packagePolicyId ?? this.packagePolicyId,
        measureId: measureId ?? this.measureId,
        fuelMeasureId: fuelMeasureId ?? this.fuelMeasureId,
        fuelTypeId: fuelTypeId ?? this.fuelTypeId,
        companyId: companyId ?? this.companyId,
        categoryId: categoryId ?? this.categoryId,
        tankSize: tankSize ?? this.tankSize,
        active: active ?? this.active,
        photographsFiles: photographsFiles ?? this.photographsFiles,
        billFile: billFile ?? this.billFile,
        pedimentoFile: pedimentoFile ?? this.pedimentoFile);
  }
}

@JsonSerializable(explicitToJson: true)
class VehiclePutDTO {
  VehiclePutDTO({
    required this.vin,
    required this.machineId,
    required this.description,
    required this.economicNumber,
    this.assignedId,
    this.brandId,
    this.modelId,
    this.modelYear,
    this.engineId,
    this.placas,
    this.drillRigId,
    this.policyId,
    this.incisoId,
    this.packagePolicyId,
    this.measureId,
    this.fuelMeasureId,
    this.fuelTypeId,
    this.companyId,
    this.categoryId,
    this.tankSize,
    this.active,
    this.photographsFiles,
    this.billFile,
    this.pedimentoFile,
    this.photosToRemove,
  });

  factory VehiclePutDTO.fromJson(Map<String, dynamic> json) =>
      _$VehiclePutDTOFromJson(json);

  @JsonKey(name: 'vin')
  final String vin;
  @JsonKey(name: 'machineId')
  final String machineId;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'economicNumber')
  final String economicNumber;
  @JsonKey(name: 'assignedId')
  final String? assignedId;
  @JsonKey(name: 'brandId')
  final String? brandId;
  @JsonKey(name: 'modelId')
  final String? modelId;
  @JsonKey(name: 'modelYear')
  final int? modelYear;
  @JsonKey(name: 'engineId')
  final String? engineId;
  @JsonKey(name: 'placas')
  final String? placas;
  @JsonKey(name: 'drillRigId')
  final int? drillRigId;
  @JsonKey(name: 'policyId')
  final String? policyId;
  @JsonKey(name: 'incisoId')
  final String? incisoId;
  @JsonKey(name: 'packagePolicyId')
  final String? packagePolicyId;
  @JsonKey(name: 'measureId')
  final String? measureId;
  @JsonKey(name: 'fuelMeasureId')
  final String? fuelMeasureId;
  @JsonKey(name: 'fuelTypeId')
  final String? fuelTypeId;
  @JsonKey(name: 'companyId')
  final String? companyId;
  @JsonKey(name: 'categoryId')
  final String? categoryId;
  @JsonKey(name: 'tankSize')
  final int? tankSize;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'photographsFiles', defaultValue: <String>[])
  final List<String>? photographsFiles;
  @JsonKey(name: 'billFile')
  final String? billFile;
  @JsonKey(name: 'pedimentoFile')
  final String? pedimentoFile;
  @JsonKey(name: 'photosToRemove', defaultValue: <String>[])
  final List<String>? photosToRemove;
  static const fromJsonFactory = _$VehiclePutDTOFromJson;
  static const toJsonFactory = _$VehiclePutDTOToJson;
  Map<String, dynamic> toJson() => _$VehiclePutDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehiclePutDTO &&
            (identical(other.vin, vin) ||
                const DeepCollectionEquality().equals(other.vin, vin)) &&
            (identical(other.machineId, machineId) ||
                const DeepCollectionEquality()
                    .equals(other.machineId, machineId)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.economicNumber, economicNumber) ||
                const DeepCollectionEquality()
                    .equals(other.economicNumber, economicNumber)) &&
            (identical(other.assignedId, assignedId) ||
                const DeepCollectionEquality()
                    .equals(other.assignedId, assignedId)) &&
            (identical(other.brandId, brandId) ||
                const DeepCollectionEquality()
                    .equals(other.brandId, brandId)) &&
            (identical(other.modelId, modelId) ||
                const DeepCollectionEquality()
                    .equals(other.modelId, modelId)) &&
            (identical(other.modelYear, modelYear) ||
                const DeepCollectionEquality()
                    .equals(other.modelYear, modelYear)) &&
            (identical(other.engineId, engineId) ||
                const DeepCollectionEquality()
                    .equals(other.engineId, engineId)) &&
            (identical(other.placas, placas) ||
                const DeepCollectionEquality().equals(other.placas, placas)) &&
            (identical(other.drillRigId, drillRigId) ||
                const DeepCollectionEquality()
                    .equals(other.drillRigId, drillRigId)) &&
            (identical(other.policyId, policyId) ||
                const DeepCollectionEquality()
                    .equals(other.policyId, policyId)) &&
            (identical(other.incisoId, incisoId) ||
                const DeepCollectionEquality()
                    .equals(other.incisoId, incisoId)) &&
            (identical(other.packagePolicyId, packagePolicyId) ||
                const DeepCollectionEquality()
                    .equals(other.packagePolicyId, packagePolicyId)) &&
            (identical(other.measureId, measureId) ||
                const DeepCollectionEquality()
                    .equals(other.measureId, measureId)) &&
            (identical(other.fuelMeasureId, fuelMeasureId) ||
                const DeepCollectionEquality()
                    .equals(other.fuelMeasureId, fuelMeasureId)) &&
            (identical(other.fuelTypeId, fuelTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.fuelTypeId, fuelTypeId)) &&
            (identical(other.companyId, companyId) ||
                const DeepCollectionEquality()
                    .equals(other.companyId, companyId)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.tankSize, tankSize) ||
                const DeepCollectionEquality()
                    .equals(other.tankSize, tankSize)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.photographsFiles, photographsFiles) ||
                const DeepCollectionEquality()
                    .equals(other.photographsFiles, photographsFiles)) &&
            (identical(other.billFile, billFile) ||
                const DeepCollectionEquality()
                    .equals(other.billFile, billFile)) &&
            (identical(other.pedimentoFile, pedimentoFile) || const DeepCollectionEquality().equals(other.pedimentoFile, pedimentoFile)) &&
            (identical(other.photosToRemove, photosToRemove) || const DeepCollectionEquality().equals(other.photosToRemove, photosToRemove)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(vin) ^
      const DeepCollectionEquality().hash(machineId) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(economicNumber) ^
      const DeepCollectionEquality().hash(assignedId) ^
      const DeepCollectionEquality().hash(brandId) ^
      const DeepCollectionEquality().hash(modelId) ^
      const DeepCollectionEquality().hash(modelYear) ^
      const DeepCollectionEquality().hash(engineId) ^
      const DeepCollectionEquality().hash(placas) ^
      const DeepCollectionEquality().hash(drillRigId) ^
      const DeepCollectionEquality().hash(policyId) ^
      const DeepCollectionEquality().hash(incisoId) ^
      const DeepCollectionEquality().hash(packagePolicyId) ^
      const DeepCollectionEquality().hash(measureId) ^
      const DeepCollectionEquality().hash(fuelMeasureId) ^
      const DeepCollectionEquality().hash(fuelTypeId) ^
      const DeepCollectionEquality().hash(companyId) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(tankSize) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(photographsFiles) ^
      const DeepCollectionEquality().hash(billFile) ^
      const DeepCollectionEquality().hash(pedimentoFile) ^
      const DeepCollectionEquality().hash(photosToRemove) ^
      runtimeType.hashCode;
}

extension $VehiclePutDTOExtension on VehiclePutDTO {
  VehiclePutDTO copyWith(
      {String? vin,
      String? machineId,
      String? description,
      String? economicNumber,
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
      List<String>? photographsFiles,
      String? billFile,
      String? pedimentoFile,
      List<String>? photosToRemove}) {
    return VehiclePutDTO(
        vin: vin ?? this.vin,
        machineId: machineId ?? this.machineId,
        description: description ?? this.description,
        economicNumber: economicNumber ?? this.economicNumber,
        assignedId: assignedId ?? this.assignedId,
        brandId: brandId ?? this.brandId,
        modelId: modelId ?? this.modelId,
        modelYear: modelYear ?? this.modelYear,
        engineId: engineId ?? this.engineId,
        placas: placas ?? this.placas,
        drillRigId: drillRigId ?? this.drillRigId,
        policyId: policyId ?? this.policyId,
        incisoId: incisoId ?? this.incisoId,
        packagePolicyId: packagePolicyId ?? this.packagePolicyId,
        measureId: measureId ?? this.measureId,
        fuelMeasureId: fuelMeasureId ?? this.fuelMeasureId,
        fuelTypeId: fuelTypeId ?? this.fuelTypeId,
        companyId: companyId ?? this.companyId,
        categoryId: categoryId ?? this.categoryId,
        tankSize: tankSize ?? this.tankSize,
        active: active ?? this.active,
        photographsFiles: photographsFiles ?? this.photographsFiles,
        billFile: billFile ?? this.billFile,
        pedimentoFile: pedimentoFile ?? this.pedimentoFile,
        photosToRemove: photosToRemove ?? this.photosToRemove);
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleStatisticsDTO {
  VehicleStatisticsDTO({
    this.id,
    this.date,
    this.odometer,
    this.performanceAverage,
    this.costKMAverage,
    this.costLTAverage,
    this.costTotalFuel,
    this.costTotalMaintenance,
    this.costAdditional,
  });

  factory VehicleStatisticsDTO.fromJson(Map<String, dynamic> json) =>
      _$VehicleStatisticsDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'date')
  final String? date;
  @JsonKey(name: 'odometer')
  final String? odometer;
  @JsonKey(name: 'performanceAverage')
  final String? performanceAverage;
  @JsonKey(name: 'costKMAverage')
  final String? costKMAverage;
  @JsonKey(name: 'costLTAverage')
  final String? costLTAverage;
  @JsonKey(name: 'costTotalFuel')
  final String? costTotalFuel;
  @JsonKey(name: 'costTotalMaintenance')
  final String? costTotalMaintenance;
  @JsonKey(name: 'costAdditional')
  final String? costAdditional;
  static const fromJsonFactory = _$VehicleStatisticsDTOFromJson;
  static const toJsonFactory = _$VehicleStatisticsDTOToJson;
  Map<String, dynamic> toJson() => _$VehicleStatisticsDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehicleStatisticsDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.odometer, odometer) ||
                const DeepCollectionEquality()
                    .equals(other.odometer, odometer)) &&
            (identical(other.performanceAverage, performanceAverage) ||
                const DeepCollectionEquality()
                    .equals(other.performanceAverage, performanceAverage)) &&
            (identical(other.costKMAverage, costKMAverage) ||
                const DeepCollectionEquality()
                    .equals(other.costKMAverage, costKMAverage)) &&
            (identical(other.costLTAverage, costLTAverage) ||
                const DeepCollectionEquality()
                    .equals(other.costLTAverage, costLTAverage)) &&
            (identical(other.costTotalFuel, costTotalFuel) ||
                const DeepCollectionEquality()
                    .equals(other.costTotalFuel, costTotalFuel)) &&
            (identical(other.costTotalMaintenance, costTotalMaintenance) ||
                const DeepCollectionEquality().equals(
                    other.costTotalMaintenance, costTotalMaintenance)) &&
            (identical(other.costAdditional, costAdditional) ||
                const DeepCollectionEquality()
                    .equals(other.costAdditional, costAdditional)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(odometer) ^
      const DeepCollectionEquality().hash(performanceAverage) ^
      const DeepCollectionEquality().hash(costKMAverage) ^
      const DeepCollectionEquality().hash(costLTAverage) ^
      const DeepCollectionEquality().hash(costTotalFuel) ^
      const DeepCollectionEquality().hash(costTotalMaintenance) ^
      const DeepCollectionEquality().hash(costAdditional) ^
      runtimeType.hashCode;
}

extension $VehicleStatisticsDTOExtension on VehicleStatisticsDTO {
  VehicleStatisticsDTO copyWith(
      {String? id,
      String? date,
      String? odometer,
      String? performanceAverage,
      String? costKMAverage,
      String? costLTAverage,
      String? costTotalFuel,
      String? costTotalMaintenance,
      String? costAdditional}) {
    return VehicleStatisticsDTO(
        id: id ?? this.id,
        date: date ?? this.date,
        odometer: odometer ?? this.odometer,
        performanceAverage: performanceAverage ?? this.performanceAverage,
        costKMAverage: costKMAverage ?? this.costKMAverage,
        costLTAverage: costLTAverage ?? this.costLTAverage,
        costTotalFuel: costTotalFuel ?? this.costTotalFuel,
        costTotalMaintenance: costTotalMaintenance ?? this.costTotalMaintenance,
        costAdditional: costAdditional ?? this.costAdditional);
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleTypeDTO {
  VehicleTypeDTO({
    this.id,
    this.name,
    this.code,
    this.description,
    this.inUse,
  });

  factory VehicleTypeDTO.fromJson(Map<String, dynamic> json) =>
      _$VehicleTypeDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'inUse')
  final bool? inUse;
  static const fromJsonFactory = _$VehicleTypeDTOFromJson;
  static const toJsonFactory = _$VehicleTypeDTOToJson;
  Map<String, dynamic> toJson() => _$VehicleTypeDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehicleTypeDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.inUse, inUse) ||
                const DeepCollectionEquality().equals(other.inUse, inUse)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(inUse) ^
      runtimeType.hashCode;
}

extension $VehicleTypeDTOExtension on VehicleTypeDTO {
  VehicleTypeDTO copyWith(
      {String? id,
      String? name,
      String? code,
      String? description,
      bool? inUse}) {
    return VehicleTypeDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        inUse: inUse ?? this.inUse);
  }
}

@JsonSerializable(explicitToJson: true)
class VehicleTypeDTOPagedResult {
  VehicleTypeDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory VehicleTypeDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$VehicleTypeDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <VehicleTypeDTO>[])
  final List<VehicleTypeDTO>? items;
  static const fromJsonFactory = _$VehicleTypeDTOPagedResultFromJson;
  static const toJsonFactory = _$VehicleTypeDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$VehicleTypeDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VehicleTypeDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $VehicleTypeDTOPagedResultExtension on VehicleTypeDTOPagedResult {
  VehicleTypeDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<VehicleTypeDTO>? items}) {
    return VehicleTypeDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

@JsonSerializable(explicitToJson: true)
class VendorDTO {
  VendorDTO({
    this.id,
    this.name,
    this.code,
    this.description,
  });

  factory VendorDTO.fromJson(Map<String, dynamic> json) =>
      _$VendorDTOFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$VendorDTOFromJson;
  static const toJsonFactory = _$VendorDTOToJson;
  Map<String, dynamic> toJson() => _$VendorDTOToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VendorDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $VendorDTOExtension on VendorDTO {
  VendorDTO copyWith(
      {String? id, String? name, String? code, String? description}) {
    return VendorDTO(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description);
  }
}

@JsonSerializable(explicitToJson: true)
class VendorDTOPagedResult {
  VendorDTOPagedResult({
    this.totalCount,
    this.pageNumber,
    this.recordNumber,
    this.totalPages,
    this.items,
  });

  factory VendorDTOPagedResult.fromJson(Map<String, dynamic> json) =>
      _$VendorDTOPagedResultFromJson(json);

  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @JsonKey(name: 'pageNumber')
  final int? pageNumber;
  @JsonKey(name: 'recordNumber')
  final int? recordNumber;
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  @JsonKey(name: 'items', defaultValue: <VendorDTO>[])
  final List<VendorDTO>? items;
  static const fromJsonFactory = _$VendorDTOPagedResultFromJson;
  static const toJsonFactory = _$VendorDTOPagedResultToJson;
  Map<String, dynamic> toJson() => _$VendorDTOPagedResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VendorDTOPagedResult &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)) &&
            (identical(other.recordNumber, recordNumber) ||
                const DeepCollectionEquality()
                    .equals(other.recordNumber, recordNumber)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(pageNumber) ^
      const DeepCollectionEquality().hash(recordNumber) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $VendorDTOPagedResultExtension on VendorDTOPagedResult {
  VendorDTOPagedResult copyWith(
      {int? totalCount,
      int? pageNumber,
      int? recordNumber,
      int? totalPages,
      List<VendorDTO>? items}) {
    return VendorDTOPagedResult(
        totalCount: totalCount ?? this.totalCount,
        pageNumber: pageNumber ?? this.pageNumber,
        recordNumber: recordNumber ?? this.recordNumber,
        totalPages: totalPages ?? this.totalPages,
        items: items ?? this.items);
  }
}

String? genderEnumToJson(enums.GenderEnum? genderEnum) {
  return enums.$GenderEnumMap[genderEnum];
}

enums.GenderEnum genderEnumFromJson(
  Object? genderEnum, [
  enums.GenderEnum? defaultValue,
]) {
  if (genderEnum is String) {
    return enums.$GenderEnumMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == genderEnum.toLowerCase(),
            orElse: () =>
                const MapEntry(enums.GenderEnum.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$GenderEnumMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.GenderEnum.swaggerGeneratedUnknown;
}

List<String> genderEnumListToJson(List<enums.GenderEnum>? genderEnum) {
  if (genderEnum == null) {
    return [];
  }

  return genderEnum.map((e) => enums.$GenderEnumMap[e]!).toList();
}

List<enums.GenderEnum> genderEnumListFromJson(
  List? genderEnum, [
  List<enums.GenderEnum>? defaultValue,
]) {
  if (genderEnum == null) {
    return defaultValue ?? [];
  }

  return genderEnum.map((e) => genderEnumFromJson(e.toString())).toList();
}

String? periodEnumToJson(enums.PeriodEnum? periodEnum) {
  return enums.$PeriodEnumMap[periodEnum];
}

enums.PeriodEnum periodEnumFromJson(
  Object? periodEnum, [
  enums.PeriodEnum? defaultValue,
]) {
  if (periodEnum is String) {
    return enums.$PeriodEnumMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == periodEnum.toLowerCase(),
            orElse: () =>
                const MapEntry(enums.PeriodEnum.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$PeriodEnumMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.PeriodEnum.swaggerGeneratedUnknown;
}

List<String> periodEnumListToJson(List<enums.PeriodEnum>? periodEnum) {
  if (periodEnum == null) {
    return [];
  }

  return periodEnum.map((e) => enums.$PeriodEnumMap[e]!).toList();
}

List<enums.PeriodEnum> periodEnumListFromJson(
  List? periodEnum, [
  List<enums.PeriodEnum>? defaultValue,
]) {
  if (periodEnum == null) {
    return defaultValue ?? [];
  }

  return periodEnum.map((e) => periodEnumFromJson(e.toString())).toList();
}

String? sortOrderEnumToJson(enums.SortOrderEnum? sortOrderEnum) {
  return enums.$SortOrderEnumMap[sortOrderEnum];
}

enums.SortOrderEnum sortOrderEnumFromJson(
  Object? sortOrderEnum, [
  enums.SortOrderEnum? defaultValue,
]) {
  if (sortOrderEnum is String) {
    return enums.$SortOrderEnumMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == sortOrderEnum.toLowerCase(),
            orElse: () =>
                const MapEntry(enums.SortOrderEnum.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$SortOrderEnumMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.SortOrderEnum.swaggerGeneratedUnknown;
}

List<String> sortOrderEnumListToJson(List<enums.SortOrderEnum>? sortOrderEnum) {
  if (sortOrderEnum == null) {
    return [];
  }

  return sortOrderEnum.map((e) => enums.$SortOrderEnumMap[e]!).toList();
}

List<enums.SortOrderEnum> sortOrderEnumListFromJson(
  List? sortOrderEnum, [
  List<enums.SortOrderEnum>? defaultValue,
]) {
  if (sortOrderEnum == null) {
    return defaultValue ?? [];
  }

  return sortOrderEnum.map((e) => sortOrderEnumFromJson(e.toString())).toList();
}

String? vehicleStatusEnumToJson(enums.VehicleStatusEnum? vehicleStatusEnum) {
  return enums.$VehicleStatusEnumMap[vehicleStatusEnum];
}

enums.VehicleStatusEnum vehicleStatusEnumFromJson(
  Object? vehicleStatusEnum, [
  enums.VehicleStatusEnum? defaultValue,
]) {
  if (vehicleStatusEnum is String) {
    return enums.$VehicleStatusEnumMap.entries
        .firstWhere(
            (element) =>
                element.value.toLowerCase() == vehicleStatusEnum.toLowerCase(),
            orElse: () => const MapEntry(
                enums.VehicleStatusEnum.swaggerGeneratedUnknown, ''))
        .key;
  }

  final parsedResult = defaultValue == null
      ? null
      : enums.$VehicleStatusEnumMap.entries
          .firstWhereOrNull((element) => element.value == defaultValue)
          ?.key;

  return parsedResult ??
      defaultValue ??
      enums.VehicleStatusEnum.swaggerGeneratedUnknown;
}

List<String> vehicleStatusEnumListToJson(
    List<enums.VehicleStatusEnum>? vehicleStatusEnum) {
  if (vehicleStatusEnum == null) {
    return [];
  }

  return vehicleStatusEnum.map((e) => enums.$VehicleStatusEnumMap[e]!).toList();
}

List<enums.VehicleStatusEnum> vehicleStatusEnumListFromJson(
  List? vehicleStatusEnum, [
  List<enums.VehicleStatusEnum>? defaultValue,
]) {
  if (vehicleStatusEnum == null) {
    return defaultValue ?? [];
  }

  return vehicleStatusEnum
      .map((e) => vehicleStatusEnumFromJson(e.toString()))
      .toList();
}

@JsonSerializable(explicitToJson: true)
class ApiUserIdPut$RequestBody {
  ApiUserIdPut$RequestBody({
    this.imageFile,
    this.name,
    required this.firstName,
    required this.lastName,
    this.url,
    this.countryCode,
    this.titleAbbreviation,
    this.gender,
    required this.phone,
    this.country,
    this.city,
    this.address,
    this.birthDate,
    this.costPerAppointment,
  });

  factory ApiUserIdPut$RequestBody.fromJson(Map<String, dynamic> json) =>
      _$ApiUserIdPut$RequestBodyFromJson(json);

  @JsonKey(name: 'imageFile')
  final String? imageFile;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'firstName')
  final String firstName;
  @JsonKey(name: 'lastName')
  final String lastName;
  @JsonKey(name: 'Url')
  final String? url;
  @JsonKey(name: 'countryCode')
  final String? countryCode;
  @JsonKey(name: 'titleAbbreviation')
  final String? titleAbbreviation;
  @JsonKey(
      name: 'gender', toJson: genderEnumToJson, fromJson: genderEnumFromJson)
  final enums.GenderEnum? gender;
  @JsonKey(name: 'phone')
  final String phone;
  @JsonKey(name: 'country')
  final String? country;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'birthDate')
  final DateTime? birthDate;
  @JsonKey(name: 'costPerAppointment')
  final double? costPerAppointment;
  static const fromJsonFactory = _$ApiUserIdPut$RequestBodyFromJson;
  static const toJsonFactory = _$ApiUserIdPut$RequestBodyToJson;
  Map<String, dynamic> toJson() => _$ApiUserIdPut$RequestBodyToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApiUserIdPut$RequestBody &&
            (identical(other.imageFile, imageFile) ||
                const DeepCollectionEquality()
                    .equals(other.imageFile, imageFile)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.titleAbbreviation, titleAbbreviation) ||
                const DeepCollectionEquality()
                    .equals(other.titleAbbreviation, titleAbbreviation)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.costPerAppointment, costPerAppointment) ||
                const DeepCollectionEquality()
                    .equals(other.costPerAppointment, costPerAppointment)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(imageFile) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(titleAbbreviation) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(costPerAppointment) ^
      runtimeType.hashCode;
}

extension $ApiUserIdPut$RequestBodyExtension on ApiUserIdPut$RequestBody {
  ApiUserIdPut$RequestBody copyWith(
      {String? imageFile,
      String? name,
      String? firstName,
      String? lastName,
      String? url,
      String? countryCode,
      String? titleAbbreviation,
      enums.GenderEnum? gender,
      String? phone,
      String? country,
      String? city,
      String? address,
      DateTime? birthDate,
      double? costPerAppointment}) {
    return ApiUserIdPut$RequestBody(
        imageFile: imageFile ?? this.imageFile,
        name: name ?? this.name,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        url: url ?? this.url,
        countryCode: countryCode ?? this.countryCode,
        titleAbbreviation: titleAbbreviation ?? this.titleAbbreviation,
        gender: gender ?? this.gender,
        phone: phone ?? this.phone,
        country: country ?? this.country,
        city: city ?? this.city,
        address: address ?? this.address,
        birthDate: birthDate ?? this.birthDate,
        costPerAppointment: costPerAppointment ?? this.costPerAppointment);
  }
}

@JsonSerializable(explicitToJson: true)
class ApiUserUploadImageIdPost$RequestBody {
  ApiUserUploadImageIdPost$RequestBody({
    this.image,
  });

  factory ApiUserUploadImageIdPost$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$ApiUserUploadImageIdPost$RequestBodyFromJson(json);

  @JsonKey(name: 'image')
  final String? image;
  static const fromJsonFactory = _$ApiUserUploadImageIdPost$RequestBodyFromJson;
  static const toJsonFactory = _$ApiUserUploadImageIdPost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$ApiUserUploadImageIdPost$RequestBodyToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApiUserUploadImageIdPost$RequestBody &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(image) ^ runtimeType.hashCode;
}

extension $ApiUserUploadImageIdPost$RequestBodyExtension
    on ApiUserUploadImageIdPost$RequestBody {
  ApiUserUploadImageIdPost$RequestBody copyWith({String? image}) {
    return ApiUserUploadImageIdPost$RequestBody(image: image ?? this.image);
  }
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  chopper.Response<ResultType> convertResponse<ResultType, Item>(
      chopper.Response response) {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}
